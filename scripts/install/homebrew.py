from rich import print
from rich.console import Console
from rich.markdown import Markdown
import os
import subprocess

console = Console()

with open("README.md") as readme:
    markdown = Markdown(readme.read())
console.print(markdown)


command_list = [
    "cmake",
    "macvim",
    "mono",
    "jq",
    "bit-git",
    "fd",
    "lazygit",
    "fzf",
    "peco",
    "fzy",
    "thefuck",
    "neovim",
    "ripgrep",
    "telnet",
    "tmux",
    "httpie",
    "you-get",
    "gh",
    "bat",
    "bats",
    "exa",
    "htop",
    "yarn",
    "yq",
    "gradle",
    "infer",
    "mpv",
    "asciinema",
    "croc",
    "ffmpeg",
    "fontconfig",
    "cocoapods",
    "glow",
    "imageoptim-cli",
    "parallel",
    "sqlite",
    "wrk",
    "vault",
    "tesseract",
    "tesseract-lang",
    "grpcurl",
    "perl",
    "git",
    "git-gui",
    "reattach-to-user-namespace",
    "fpp",
    "luarocks",
    "pyenv" # Python Version Manager
]

devops_list = [
    "aws-iam-authenticator",
    "docker-credential-helper",
    "eksctl",
    "krew",
    "kompose",
    "ansible",
    "ansible-lint",
    "vagrant",
    "dive",
    "kustomize",
    "minikube",
    "kubectx",
    "docker-machine",
    "docker-compose",
    "helm",
    "kubectl",
    "terraform",
    "terragrunt",
    "k9s",
    "buildkit",
    "kops",
    "stern",
    "skaffold",
    "earthly",
    "buildpacks/tap/pack",
    "tektoncd-cli",
    "teleconsole",
    "velero",
    "packer",
]

devops_cask_list = [
    "fly"
]

desktop_application_list = [
    "another-redis-desktop-manager",
    "vagrant-manager",
    "bloomrpc",
    "virtualbox",
    "jmeter",
    "visual-studio-code",
]

desktop_application_cask_list = [
    "github",
    "authy",
    "google-chrome",
    "microsoft-edge",
    "vivaldi",
    "brave-browser",
    "lastpass",
    "discord",
    "visual-paradigm-ce",
]

font_list = [
    "font-fira-code",
    "font-cascadia-code-pl"
]

formulae_list = command_list + devops_list + desktop_application_list
cask_list = devops_cask_list + desktop_application_cask_list

def execute(brew_list, is_cask=False):
    list_one_line = ""

    for i in brew_list:
        list_one_line += " " + i

    if is_cask:
        console.print("Installing from [bold red]Cask[/]...")
        brew_cmd_prefix = "brew cask install"
    else:
        console.print("Installing from [bold red]Formulae[/]...")
        brew_cmd_prefix = "brew install"

    brew_cmd = brew_cmd_prefix + list_one_line
    os.system(brew_cmd)

def install_font():
    os.system("brew tap homebrew/cask-fonts")

def install_others():
    # Git toolbelt
    console.print("Installing [bold red]Git toolbelt[/]...")
    os.system("brew tap nvie/tap")
    os.system("brew install nvie/tap/git-toolbelt")
    # Telepresence
    console.print("Installing [bold red]Telepresence[/]...")
    os.system("brew cask install osxfuse")
    os.system("brew install datawire/blackbird/telepresence")

execute(formulae_list)

execute(cask_list, True)

console.print()
console.print("Installing from [bold red]Formulae[/]...")
execute(font_list, True)

install_others()