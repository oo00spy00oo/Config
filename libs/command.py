class Command:
    NAME = "name"
    CODE = "code"
    TAP = "tap"
    DEPENDS = "depends"
    FOMULAE = "formulae"
    CASK = "cask"

    BREW_CMD = "brew install"
    BREW_CASK_CMD = "brew install --cask"
    BREW_TAP_CMD = "brew tap"

    PIP_CMD = "pip install"
    PIP_UPGRADE_CMD = "pip install -U"

    KREW_CMD = "kubectl krew install"
    KREW_UPGRADE_CMD = "kubectl krew upgrade"

    YARN_CMD = "yarn global add"