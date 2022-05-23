"""Dependency specific initialization."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def deps(repo_mapping = {}):
    maybe(
        http_archive,
        name = "com_github_backward_cpp",
        url = "https://github.com/bombela/backward-cpp/archive/refs/tags/v1.6.tar.gz",
        sha256 = "c654d0923d43f1cea23d086729673498e4741fb2457e806cfaeaea7b20c97c10",
        strip_prefix = "backward-cpp-1.6",
        repo_mapping = repo_mapping,
        build_file = "@com_github_3rdparty_backward_cpp//:BUILD.bazel",
    )
