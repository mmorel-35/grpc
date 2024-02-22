load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _non_module_deps_impl(ctx):
  http_archive(
      name = "bazel_compdb",
      sha256 = "bcecfd622c4ef272fd4ba42726a52e140b961c4eac23025f18b346c968a8cfb4",
      strip_prefix = "bazel-compilation-database-0.4.5",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/grailbio/bazel-compilation-database/archive/0.4.5.tar.gz",
          "https://github.com/grailbio/bazel-compilation-database/archive/0.4.5.tar.gz",
      ],
  )
  http_archive(
      name = "bazel_toolchains",
      sha256 = "179ec02f809e86abf56356d8898c8bd74069f1bd7c56044050c2cd3d79d0e024",
      strip_prefix = "bazel-toolchains-4.1.0",
      urls = [
          "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/4.1.0/bazel-toolchains-4.1.0.tar.gz",
          "https://github.com/bazelbuild/bazel-toolchains/releases/download/4.1.0/bazel-toolchains-4.1.0.tar.gz",
      ],
  )
  http_archive(
      name = "com_envoyproxy_protoc_gen_validate",
      strip_prefix = "protoc-gen-validate-4694024279bdac52b77e22dc87808bd0fd732b69",
      sha256 = "1e490b98005664d149b379a9529a6aa05932b8a11b76b4cd86f3d22d76346f47",
      urls = [
          "https://github.com/envoyproxy/protoc-gen-validate/archive/4694024279bdac52b77e22dc87808bd0fd732b69.tar.gz",
      ],
      patches = ["@com_github_grpc_grpc//third_party:protoc-gen-validate.patch"],
      patch_args = ["-p1"],
  )
  http_archive(
      name = "com_github_cncf_xds",
      sha256 = "dc305e20c9fa80822322271b50aa2ffa917bf4fd3973bcec52bfc28dc32c5927",
      strip_prefix = "xds-3a472e524827f72d1ad621c4983dd5af54c46776",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/cncf/xds/archive/3a472e524827f72d1ad621c4983dd5af54c46776.tar.gz",
          "https://github.com/cncf/xds/archive/3a472e524827f72d1ad621c4983dd5af54c46776.tar.gz",
      ],
  )
  http_archive(
      name = "com_github_jupp0r_prometheus_cpp",
      strip_prefix = "prometheus-cpp-b1234816facfdda29845c46696a02998a4af115a",
      sha256 = "cdf03ee63fcb1d9e113f7bd525e043c254729dddf19d80396489f5b92c83c18d",
      urls = [
          "https://github.com/jupp0r/prometheus-cpp/archive/b123481.zip",
      ],
  )
  http_archive(
      name = "com_google_fuzztest",
      sha256 = "cdf8d8cd3cdc77280a7c59b310edf234e489a96b6e727cb271e7dfbeb9bcca8d",
      strip_prefix = "fuzztest-4ecaeb5084a061a862af8f86789ee184cd3d3f18",
      urls = [
          # 2023-05-16
          "https://github.com/google/fuzztest/archive/4ecaeb5084a061a862af8f86789ee184cd3d3f18.tar.gz",
      ],
  )
  http_archive(
      name = "com_google_googleapis",
      sha256 = "5bb6b0253ccf64b53d6c7249625a7e3f6c3bc6402abd52d3778bfa48258703a0",
      strip_prefix = "googleapis-2f9af297c84c55c8b871ba4495e01ade42476c92",
      build_file = Label("//bazel:googleapis.BUILD"),
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/googleapis/googleapis/archive/2f9af297c84c55c8b871ba4495e01ade42476c92.tar.gz",
          "https://github.com/googleapis/googleapis/archive/2f9af297c84c55c8b871ba4495e01ade42476c92.tar.gz",
      ],
  )
  http_archive(
      name = "cython",
      build_file = "//third_party:cython.BUILD",
      sha256 = "a2da56cc22be823acf49741b9aa3aa116d4f07fa8e8b35a3cb08b8447b37c607",
      strip_prefix = "cython-0.29.35",
      urls = [
          "https://github.com/cython/cython/archive/0.29.35.tar.gz",
      ],
  )
  http_archive(
      name = "google_cloud_cpp",
      sha256 = "7ca7f583b60d2aa1274411fed3b9fb3887119b2e84244bb3fc69ea1db819e4e5",
      strip_prefix = "google-cloud-cpp-2.16.0",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/googleapis/google-cloud-cpp/archive/refs/tags/v2.16.0.tar.gz",
          "https://github.com/googleapis/google-cloud-cpp/archive/refs/tags/v2.16.0.tar.gz",
      ],
  )
  http_archive(
      name = "io_opencensus_cpp",
      sha256 = "46b3b5812c150a21bacf860c2f76fc42b89773ed77ee954c32adeb8593aa2a8e",
      strip_prefix = "opencensus-cpp-5501a1a255805e0be83a41348bb5f2630d5ed6b3",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/census-instrumentation/opencensus-cpp/archive/5501a1a255805e0be83a41348bb5f2630d5ed6b3.tar.gz",
          "https://github.com/census-instrumentation/opencensus-cpp/archive/5501a1a255805e0be83a41348bb5f2630d5ed6b3.tar.gz",
      ],
  )
  http_archive(
      name = "io_opentelemetry_cpp",
      urls = [
        "https://storage.googleapis.com/grpc-bazel-mirror/github.com/open-telemetry/opentelemetry-cpp/archive/refs/tags/v1.13.0.tar.gz",
        "https://github.com/open-telemetry/opentelemetry-cpp/archive/refs/tags/v1.13.0.tar.gz"
      ],
      sha256 = "7735cc56507149686e6019e06f588317099d4522480be5f38a2a09ec69af1706",
      strip_prefix = "opentelemetry-cpp-1.13.0",
  )
  http_archive(
      name = "envoy_api",
      sha256 = "ddd3beedda1178a79e0d988f76f362002aced09749452515853f106e22bd2249",
      strip_prefix = "data-plane-api-78f198cf96ecdc7120ef640406770aa01af775c4",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/envoyproxy/data-plane-api/archive/78f198cf96ecdc7120ef640406770aa01af775c4.tar.gz",
          "https://github.com/envoyproxy/data-plane-api/archive/78f198cf96ecdc7120ef640406770aa01af775c4.tar.gz",
      ],
  )
  http_archive(
      name = "opencensus_proto",
      sha256 = "b7e13f0b4259e80c3070b583c2f39e53153085a6918718b1c710caf7037572b0",
      strip_prefix = "opencensus-proto-0.3.0/src",
      urls = [
          "https://storage.googleapis.com/grpc-bazel-mirror/github.com/census-instrumentation/opencensus-proto/archive/v0.3.0.tar.gz",
          "https://github.com/census-instrumentation/opencensus-proto/archive/v0.3.0.tar.gz",
      ],
  )

non_module_deps = module_extension(implementation = _non_module_deps_impl)
