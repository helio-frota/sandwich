#include <nan.h>

extern "C" {
  #include "cFunction.h"
}

void Method(const Nan::FunctionCallbackInfo<v8::Value>&) {
  cfoo();
}

void Init(v8::Local<v8::Object> exports) {
  exports->Set(Nan::New("jsfoo").ToLocalChecked(),
               Nan::New<v8::FunctionTemplate>(Method)->GetFunction());
}

NODE_MODULE(jsfoo, Init)
