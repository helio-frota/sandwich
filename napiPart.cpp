#include <napi.h>

void callingCPart();

static Napi::String Method(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  callingCPart();
}

static Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "cppPartExportedByNapi"),
              Napi::Function::New(env, Method));
  return exports;
}

NODE_API_MODULE(cppPartExportedByNapi, Init)