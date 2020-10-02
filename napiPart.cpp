#include <napi.h>

extern void callingCPart();

void Method(const Napi::CallbackInfo& info) {
  callingCPart();
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "cppPartExportedByNapi"),
              Napi::Function::New(env, Method));
  return exports;
}

NODE_API_MODULE(cppPartExportedByNapi, Init)