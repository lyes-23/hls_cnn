#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void calculateLayer3(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*);
extern "C" void apatb_calculateLayer3_hw(volatile void * __xlx_apatb_param_Layer2_Neurons_CPU, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_0, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_1, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_2, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_3, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_4, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_5, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_6, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_7, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_8, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_9, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_10, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_11, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_12, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_13, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_14, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_15, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_16, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_17, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_18, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_19, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_20, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_21, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_22, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_23, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_24, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_25, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_26, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_27, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_28, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_29, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_30, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_31, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_32, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_33, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_34, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_35, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_36, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_37, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_38, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_39, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_40, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_41, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_42, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_43, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_44, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_45, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_46, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_47, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_48, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_49, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_50, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_51, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_52, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_53, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_54, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_55, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_56, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_57, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_58, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_59, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_60, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_61, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_62, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_63, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_64, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_65, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_66, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_67, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_68, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_69, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_70, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_71, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_72, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_73, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_74, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_75, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_76, volatile void * __xlx_apatb_param_Layer2_Weights_CPU_77, volatile void * __xlx_apatb_param_Layer3_Neurons_CPU) {
using hls::sim::createStream;
  // Collect __xlx_Layer2_Neurons_CPU__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Neurons_CPU__tmp_vec;
for (size_t i = 0; i < 1014; ++i){
__xlx_Layer2_Neurons_CPU__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Neurons_CPU)[i]);
}
  int __xlx_size_param_Layer2_Neurons_CPU = 1014;
  int __xlx_offset_param_Layer2_Neurons_CPU = 0;
  int __xlx_offset_byte_param_Layer2_Neurons_CPU = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_0__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_0__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_0)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_0 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_0 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_0 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_1__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_1__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_1)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_1 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_1 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_1 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_2__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_2__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_2)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_2 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_2 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_2 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_3__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_3__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_3)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_3 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_3 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_3 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_4__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_4__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_4)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_4 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_4 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_4 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_5__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_5__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_5)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_5 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_5 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_5 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_6__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_6__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_6)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_6 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_6 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_6 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_7__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_7__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_7)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_7 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_7 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_7 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_8__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_8__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_8)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_8 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_8 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_8 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_9__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_9__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_9)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_9 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_9 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_9 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_10__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_10__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_10)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_10 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_10 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_10 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_11__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_11__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_11)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_11 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_11 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_11 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_12__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_12__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_12)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_12 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_12 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_12 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_13__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_13__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_13)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_13 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_13 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_13 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_14__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_14__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_14)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_14 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_14 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_14 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_15__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_15__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_15)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_15 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_15 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_15 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_16__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_16__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_16__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_16)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_16 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_16 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_16 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_17__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_17__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_17__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_17)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_17 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_17 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_17 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_18__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_18__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_18__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_18)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_18 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_18 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_18 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_19__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_19__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_19__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_19)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_19 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_19 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_19 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_20__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_20__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_20__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_20)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_20 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_20 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_20 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_21__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_21__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_21__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_21)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_21 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_21 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_21 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_22__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_22__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_22__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_22)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_22 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_22 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_22 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_23__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_23__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_23__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_23)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_23 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_23 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_23 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_24__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_24__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_24__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_24)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_24 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_24 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_24 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_25__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_25__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_25__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_25)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_25 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_25 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_25 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_26__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_26__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_26__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_26)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_26 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_26 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_26 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_27__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_27__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_27__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_27)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_27 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_27 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_27 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_28__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_28__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_28__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_28)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_28 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_28 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_28 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_29__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_29__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_29__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_29)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_29 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_29 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_29 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_30__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_30__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_30__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_30)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_30 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_30 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_30 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_31__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_31__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_31__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_31)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_31 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_31 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_31 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_32__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_32__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_32__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_32)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_32 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_32 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_32 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_33__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_33__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_33__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_33)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_33 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_33 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_33 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_34__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_34__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_34__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_34)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_34 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_34 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_34 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_35__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_35__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_35__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_35)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_35 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_35 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_35 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_36__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_36__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_36__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_36)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_36 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_36 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_36 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_37__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_37__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_37__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_37)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_37 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_37 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_37 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_38__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_38__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_38__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_38)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_38 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_38 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_38 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_39__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_39__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_39__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_39)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_39 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_39 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_39 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_40__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_40__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_40__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_40)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_40 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_40 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_40 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_41__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_41__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_41__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_41)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_41 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_41 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_41 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_42__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_42__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_42__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_42)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_42 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_42 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_42 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_43__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_43__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_43__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_43)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_43 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_43 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_43 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_44__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_44__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_44__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_44)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_44 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_44 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_44 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_45__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_45__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_45__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_45)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_45 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_45 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_45 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_46__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_46__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_46__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_46)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_46 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_46 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_46 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_47__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_47__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_47__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_47)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_47 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_47 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_47 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_48__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_48__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_48__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_48)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_48 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_48 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_48 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_49__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_49__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_49__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_49)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_49 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_49 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_49 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_50__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_50__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_50__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_50)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_50 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_50 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_50 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_51__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_51__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_51__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_51)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_51 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_51 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_51 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_52__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_52__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_52__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_52)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_52 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_52 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_52 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_53__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_53__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_53__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_53)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_53 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_53 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_53 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_54__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_54__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_54__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_54)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_54 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_54 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_54 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_55__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_55__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_55__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_55)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_55 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_55 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_55 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_56__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_56__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_56__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_56)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_56 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_56 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_56 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_57__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_57__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_57__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_57)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_57 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_57 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_57 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_58__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_58__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_58__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_58)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_58 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_58 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_58 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_59__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_59__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_59__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_59)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_59 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_59 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_59 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_60__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_60__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_60__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_60)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_60 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_60 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_60 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_61__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_61__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_61__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_61)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_61 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_61 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_61 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_62__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_62__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_62__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_62)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_62 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_62 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_62 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_63__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_63__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_63__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_63)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_63 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_63 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_63 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_64__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_64__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_64__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_64)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_64 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_64 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_64 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_65__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_65__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_65__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_65)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_65 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_65 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_65 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_66__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_66__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_66__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_66)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_66 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_66 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_66 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_67__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_67__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_67__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_67)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_67 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_67 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_67 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_68__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_68__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_68__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_68)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_68 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_68 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_68 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_69__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_69__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_69__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_69)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_69 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_69 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_69 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_70__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_70__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_70__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_70)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_70 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_70 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_70 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_71__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_71__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_71__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_71)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_71 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_71 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_71 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_72__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_72__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_72__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_72)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_72 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_72 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_72 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_73__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_73__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_73__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_73)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_73 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_73 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_73 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_74__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_74__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_74__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_74)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_74 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_74 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_74 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_75__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_75__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_75__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_75)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_75 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_75 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_75 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_76__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_76__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_76__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_76)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_76 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_76 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_76 = 0*4;
  // Collect __xlx_Layer2_Weights_CPU_77__tmp_vec
std::vector<Byte<4>> __xlx_Layer2_Weights_CPU_77__tmp_vec;
for (size_t i = 0; i < 100; ++i){
__xlx_Layer2_Weights_CPU_77__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_77)[i]);
}
  int __xlx_size_param_Layer2_Weights_CPU_77 = 100;
  int __xlx_offset_param_Layer2_Weights_CPU_77 = 0;
  int __xlx_offset_byte_param_Layer2_Weights_CPU_77 = 0*4;
  // Collect __xlx_Layer3_Neurons_CPU__tmp_vec
std::vector<Byte<4>> __xlx_Layer3_Neurons_CPU__tmp_vec;
for (size_t i = 0; i < 1250; ++i){
__xlx_Layer3_Neurons_CPU__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_Layer3_Neurons_CPU)[i]);
}
  int __xlx_size_param_Layer3_Neurons_CPU = 1250;
  int __xlx_offset_param_Layer3_Neurons_CPU = 0;
  int __xlx_offset_byte_param_Layer3_Neurons_CPU = 0*4;
  // DUT call
  calculateLayer3(__xlx_Layer2_Neurons_CPU__tmp_vec.data(), __xlx_Layer2_Weights_CPU_0__tmp_vec.data(), __xlx_Layer2_Weights_CPU_1__tmp_vec.data(), __xlx_Layer2_Weights_CPU_2__tmp_vec.data(), __xlx_Layer2_Weights_CPU_3__tmp_vec.data(), __xlx_Layer2_Weights_CPU_4__tmp_vec.data(), __xlx_Layer2_Weights_CPU_5__tmp_vec.data(), __xlx_Layer2_Weights_CPU_6__tmp_vec.data(), __xlx_Layer2_Weights_CPU_7__tmp_vec.data(), __xlx_Layer2_Weights_CPU_8__tmp_vec.data(), __xlx_Layer2_Weights_CPU_9__tmp_vec.data(), __xlx_Layer2_Weights_CPU_10__tmp_vec.data(), __xlx_Layer2_Weights_CPU_11__tmp_vec.data(), __xlx_Layer2_Weights_CPU_12__tmp_vec.data(), __xlx_Layer2_Weights_CPU_13__tmp_vec.data(), __xlx_Layer2_Weights_CPU_14__tmp_vec.data(), __xlx_Layer2_Weights_CPU_15__tmp_vec.data(), __xlx_Layer2_Weights_CPU_16__tmp_vec.data(), __xlx_Layer2_Weights_CPU_17__tmp_vec.data(), __xlx_Layer2_Weights_CPU_18__tmp_vec.data(), __xlx_Layer2_Weights_CPU_19__tmp_vec.data(), __xlx_Layer2_Weights_CPU_20__tmp_vec.data(), __xlx_Layer2_Weights_CPU_21__tmp_vec.data(), __xlx_Layer2_Weights_CPU_22__tmp_vec.data(), __xlx_Layer2_Weights_CPU_23__tmp_vec.data(), __xlx_Layer2_Weights_CPU_24__tmp_vec.data(), __xlx_Layer2_Weights_CPU_25__tmp_vec.data(), __xlx_Layer2_Weights_CPU_26__tmp_vec.data(), __xlx_Layer2_Weights_CPU_27__tmp_vec.data(), __xlx_Layer2_Weights_CPU_28__tmp_vec.data(), __xlx_Layer2_Weights_CPU_29__tmp_vec.data(), __xlx_Layer2_Weights_CPU_30__tmp_vec.data(), __xlx_Layer2_Weights_CPU_31__tmp_vec.data(), __xlx_Layer2_Weights_CPU_32__tmp_vec.data(), __xlx_Layer2_Weights_CPU_33__tmp_vec.data(), __xlx_Layer2_Weights_CPU_34__tmp_vec.data(), __xlx_Layer2_Weights_CPU_35__tmp_vec.data(), __xlx_Layer2_Weights_CPU_36__tmp_vec.data(), __xlx_Layer2_Weights_CPU_37__tmp_vec.data(), __xlx_Layer2_Weights_CPU_38__tmp_vec.data(), __xlx_Layer2_Weights_CPU_39__tmp_vec.data(), __xlx_Layer2_Weights_CPU_40__tmp_vec.data(), __xlx_Layer2_Weights_CPU_41__tmp_vec.data(), __xlx_Layer2_Weights_CPU_42__tmp_vec.data(), __xlx_Layer2_Weights_CPU_43__tmp_vec.data(), __xlx_Layer2_Weights_CPU_44__tmp_vec.data(), __xlx_Layer2_Weights_CPU_45__tmp_vec.data(), __xlx_Layer2_Weights_CPU_46__tmp_vec.data(), __xlx_Layer2_Weights_CPU_47__tmp_vec.data(), __xlx_Layer2_Weights_CPU_48__tmp_vec.data(), __xlx_Layer2_Weights_CPU_49__tmp_vec.data(), __xlx_Layer2_Weights_CPU_50__tmp_vec.data(), __xlx_Layer2_Weights_CPU_51__tmp_vec.data(), __xlx_Layer2_Weights_CPU_52__tmp_vec.data(), __xlx_Layer2_Weights_CPU_53__tmp_vec.data(), __xlx_Layer2_Weights_CPU_54__tmp_vec.data(), __xlx_Layer2_Weights_CPU_55__tmp_vec.data(), __xlx_Layer2_Weights_CPU_56__tmp_vec.data(), __xlx_Layer2_Weights_CPU_57__tmp_vec.data(), __xlx_Layer2_Weights_CPU_58__tmp_vec.data(), __xlx_Layer2_Weights_CPU_59__tmp_vec.data(), __xlx_Layer2_Weights_CPU_60__tmp_vec.data(), __xlx_Layer2_Weights_CPU_61__tmp_vec.data(), __xlx_Layer2_Weights_CPU_62__tmp_vec.data(), __xlx_Layer2_Weights_CPU_63__tmp_vec.data(), __xlx_Layer2_Weights_CPU_64__tmp_vec.data(), __xlx_Layer2_Weights_CPU_65__tmp_vec.data(), __xlx_Layer2_Weights_CPU_66__tmp_vec.data(), __xlx_Layer2_Weights_CPU_67__tmp_vec.data(), __xlx_Layer2_Weights_CPU_68__tmp_vec.data(), __xlx_Layer2_Weights_CPU_69__tmp_vec.data(), __xlx_Layer2_Weights_CPU_70__tmp_vec.data(), __xlx_Layer2_Weights_CPU_71__tmp_vec.data(), __xlx_Layer2_Weights_CPU_72__tmp_vec.data(), __xlx_Layer2_Weights_CPU_73__tmp_vec.data(), __xlx_Layer2_Weights_CPU_74__tmp_vec.data(), __xlx_Layer2_Weights_CPU_75__tmp_vec.data(), __xlx_Layer2_Weights_CPU_76__tmp_vec.data(), __xlx_Layer2_Weights_CPU_77__tmp_vec.data(), __xlx_Layer3_Neurons_CPU__tmp_vec.data());
// print __xlx_apatb_param_Layer2_Neurons_CPU
for (size_t i = 0; i < __xlx_size_param_Layer2_Neurons_CPU; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Neurons_CPU)[i] = __xlx_Layer2_Neurons_CPU__tmp_vec[__xlx_offset_param_Layer2_Neurons_CPU+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_0
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_0; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_0)[i] = __xlx_Layer2_Weights_CPU_0__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_0+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_1
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_1; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_1)[i] = __xlx_Layer2_Weights_CPU_1__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_1+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_2
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_2; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_2)[i] = __xlx_Layer2_Weights_CPU_2__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_2+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_3
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_3; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_3)[i] = __xlx_Layer2_Weights_CPU_3__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_3+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_4
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_4; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_4)[i] = __xlx_Layer2_Weights_CPU_4__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_4+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_5
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_5; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_5)[i] = __xlx_Layer2_Weights_CPU_5__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_5+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_6
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_6; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_6)[i] = __xlx_Layer2_Weights_CPU_6__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_6+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_7
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_7; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_7)[i] = __xlx_Layer2_Weights_CPU_7__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_7+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_8
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_8; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_8)[i] = __xlx_Layer2_Weights_CPU_8__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_8+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_9
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_9; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_9)[i] = __xlx_Layer2_Weights_CPU_9__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_9+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_10
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_10; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_10)[i] = __xlx_Layer2_Weights_CPU_10__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_10+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_11
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_11; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_11)[i] = __xlx_Layer2_Weights_CPU_11__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_11+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_12
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_12; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_12)[i] = __xlx_Layer2_Weights_CPU_12__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_12+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_13
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_13; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_13)[i] = __xlx_Layer2_Weights_CPU_13__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_13+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_14
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_14; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_14)[i] = __xlx_Layer2_Weights_CPU_14__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_14+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_15
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_15; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_15)[i] = __xlx_Layer2_Weights_CPU_15__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_15+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_16
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_16; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_16)[i] = __xlx_Layer2_Weights_CPU_16__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_16+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_17
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_17; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_17)[i] = __xlx_Layer2_Weights_CPU_17__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_17+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_18
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_18; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_18)[i] = __xlx_Layer2_Weights_CPU_18__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_18+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_19
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_19; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_19)[i] = __xlx_Layer2_Weights_CPU_19__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_19+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_20
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_20; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_20)[i] = __xlx_Layer2_Weights_CPU_20__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_20+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_21
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_21; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_21)[i] = __xlx_Layer2_Weights_CPU_21__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_21+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_22
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_22; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_22)[i] = __xlx_Layer2_Weights_CPU_22__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_22+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_23
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_23; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_23)[i] = __xlx_Layer2_Weights_CPU_23__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_23+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_24
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_24; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_24)[i] = __xlx_Layer2_Weights_CPU_24__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_24+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_25
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_25; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_25)[i] = __xlx_Layer2_Weights_CPU_25__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_25+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_26
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_26; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_26)[i] = __xlx_Layer2_Weights_CPU_26__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_26+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_27
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_27; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_27)[i] = __xlx_Layer2_Weights_CPU_27__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_27+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_28
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_28; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_28)[i] = __xlx_Layer2_Weights_CPU_28__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_28+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_29
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_29; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_29)[i] = __xlx_Layer2_Weights_CPU_29__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_29+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_30
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_30; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_30)[i] = __xlx_Layer2_Weights_CPU_30__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_30+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_31
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_31; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_31)[i] = __xlx_Layer2_Weights_CPU_31__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_31+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_32
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_32; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_32)[i] = __xlx_Layer2_Weights_CPU_32__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_32+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_33
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_33; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_33)[i] = __xlx_Layer2_Weights_CPU_33__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_33+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_34
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_34; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_34)[i] = __xlx_Layer2_Weights_CPU_34__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_34+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_35
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_35; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_35)[i] = __xlx_Layer2_Weights_CPU_35__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_35+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_36
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_36; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_36)[i] = __xlx_Layer2_Weights_CPU_36__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_36+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_37
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_37; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_37)[i] = __xlx_Layer2_Weights_CPU_37__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_37+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_38
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_38; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_38)[i] = __xlx_Layer2_Weights_CPU_38__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_38+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_39
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_39; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_39)[i] = __xlx_Layer2_Weights_CPU_39__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_39+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_40
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_40; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_40)[i] = __xlx_Layer2_Weights_CPU_40__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_40+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_41
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_41; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_41)[i] = __xlx_Layer2_Weights_CPU_41__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_41+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_42
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_42; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_42)[i] = __xlx_Layer2_Weights_CPU_42__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_42+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_43
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_43; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_43)[i] = __xlx_Layer2_Weights_CPU_43__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_43+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_44
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_44; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_44)[i] = __xlx_Layer2_Weights_CPU_44__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_44+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_45
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_45; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_45)[i] = __xlx_Layer2_Weights_CPU_45__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_45+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_46
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_46; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_46)[i] = __xlx_Layer2_Weights_CPU_46__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_46+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_47
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_47; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_47)[i] = __xlx_Layer2_Weights_CPU_47__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_47+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_48
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_48; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_48)[i] = __xlx_Layer2_Weights_CPU_48__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_48+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_49
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_49; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_49)[i] = __xlx_Layer2_Weights_CPU_49__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_49+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_50
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_50; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_50)[i] = __xlx_Layer2_Weights_CPU_50__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_50+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_51
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_51; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_51)[i] = __xlx_Layer2_Weights_CPU_51__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_51+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_52
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_52; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_52)[i] = __xlx_Layer2_Weights_CPU_52__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_52+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_53
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_53; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_53)[i] = __xlx_Layer2_Weights_CPU_53__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_53+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_54
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_54; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_54)[i] = __xlx_Layer2_Weights_CPU_54__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_54+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_55
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_55; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_55)[i] = __xlx_Layer2_Weights_CPU_55__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_55+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_56
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_56; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_56)[i] = __xlx_Layer2_Weights_CPU_56__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_56+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_57
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_57; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_57)[i] = __xlx_Layer2_Weights_CPU_57__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_57+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_58
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_58; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_58)[i] = __xlx_Layer2_Weights_CPU_58__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_58+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_59
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_59; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_59)[i] = __xlx_Layer2_Weights_CPU_59__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_59+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_60
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_60; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_60)[i] = __xlx_Layer2_Weights_CPU_60__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_60+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_61
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_61; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_61)[i] = __xlx_Layer2_Weights_CPU_61__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_61+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_62
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_62; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_62)[i] = __xlx_Layer2_Weights_CPU_62__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_62+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_63
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_63; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_63)[i] = __xlx_Layer2_Weights_CPU_63__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_63+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_64
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_64; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_64)[i] = __xlx_Layer2_Weights_CPU_64__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_64+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_65
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_65; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_65)[i] = __xlx_Layer2_Weights_CPU_65__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_65+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_66
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_66; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_66)[i] = __xlx_Layer2_Weights_CPU_66__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_66+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_67
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_67; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_67)[i] = __xlx_Layer2_Weights_CPU_67__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_67+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_68
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_68; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_68)[i] = __xlx_Layer2_Weights_CPU_68__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_68+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_69
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_69; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_69)[i] = __xlx_Layer2_Weights_CPU_69__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_69+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_70
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_70; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_70)[i] = __xlx_Layer2_Weights_CPU_70__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_70+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_71
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_71; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_71)[i] = __xlx_Layer2_Weights_CPU_71__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_71+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_72
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_72; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_72)[i] = __xlx_Layer2_Weights_CPU_72__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_72+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_73
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_73; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_73)[i] = __xlx_Layer2_Weights_CPU_73__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_73+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_74
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_74; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_74)[i] = __xlx_Layer2_Weights_CPU_74__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_74+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_75
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_75; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_75)[i] = __xlx_Layer2_Weights_CPU_75__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_75+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_76
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_76; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_76)[i] = __xlx_Layer2_Weights_CPU_76__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_76+i];
}
// print __xlx_apatb_param_Layer2_Weights_CPU_77
for (size_t i = 0; i < __xlx_size_param_Layer2_Weights_CPU_77; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer2_Weights_CPU_77)[i] = __xlx_Layer2_Weights_CPU_77__tmp_vec[__xlx_offset_param_Layer2_Weights_CPU_77+i];
}
// print __xlx_apatb_param_Layer3_Neurons_CPU
for (size_t i = 0; i < __xlx_size_param_Layer3_Neurons_CPU; ++i) {
((Byte<4>*)__xlx_apatb_param_Layer3_Neurons_CPU)[i] = __xlx_Layer3_Neurons_CPU__tmp_vec[__xlx_offset_param_Layer3_Neurons_CPU+i];
}
}
