#include <nan.h>

void cPPfoo();

void Method(const Nan::FunctionCallbackInfo<v8::Value>&) {
  cPPfoo();
}

void Init(v8::Local<v8::Object> exports) {
  exports->Set(Nan::New("jsfoo").ToLocalChecked(),
               Nan::New<v8::FunctionTemplate>(Method)->GetFunction());
}

NODE_MODULE(jsfoo, Init)
