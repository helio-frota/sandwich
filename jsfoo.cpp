#include <napi.h>

void cPPfoo();

static Napi::String Method(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  cPPfoo();
}

static Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "jsfoo"),
              Napi::Function::New(env, Method));
  return exports;
}

NODE_API_MODULE(jsfoo, Init)