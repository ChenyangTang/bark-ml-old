load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def load_bark():
  _maybe(
    native.local_repository,
    name = "bark_project",
    path="/home/hart/Dokumente/2019/bark",
  )
  _maybe(
    native.local_repository,
    name = "icml2020",
    path="/home/hart/Dokumente/2019/icml2020",
  )
  # _maybe(
  #   git_repository,
  #   name = "bark_project",
  #   branch="master",
  #   remote = "https://github.com/bark-simulator/bark",
  # )
