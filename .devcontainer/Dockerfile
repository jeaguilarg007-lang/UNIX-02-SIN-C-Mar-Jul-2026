# ============================================================================
# Dockerfile for the course environment
# ============================================================================
# Docker reads this file sequentially and executes each instruction to
# create an image. According to the container concepts introduced in
# Black Hat Bash, the image acts as a reusable template, while a container
# is a running instance created from that template (BHB Ch.3).
#
# Instructions are processed in order, so keeping related operations
# together improves organization and avoids unnecessary rebuild steps.
# Docker stores intermediate results as layers, which makes rebuilding
# faster when previous instructions remain unchanged.
# ============================================================================


# ----------------------------------------------------------------------------
# Base image used for the course environment
# ----------------------------------------------------------------------------
# Instead of creating a system from scratch, this image starts from
# Kali Linux Rolling. Kali provides many tools commonly used in
# networking and security labs, making the environment consistent
# across different systems. The base image becomes the foundation
# for all later instructions in this Dockerfile (BHB Ch.3).
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# Environment variables shared by programs running inside the container
# ----------------------------------------------------------------------------
# Environment variables provide settings that can be inherited by commands
# and processes launched from the shell. As explained in Bash fundamentals,
# programs can use these values to modify their behavior without changing
# the commands themselves (BHB Ch.1).
#
# DEBIAN_FRONTEND=noninteractive prevents package installation tools from
# stopping to request input while the image is being built.
#
# LANG and LC_ALL define the language and UTF-8 character encoding so that
# applications handle accented characters and other symbols correctly.
#
# TERM informs terminal-based applications about color capabilities and
# interactive features supported by the shell.
#
# The backslash "\" allows long instructions to be split across multiple
# lines, improving readability and maintenance.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Preconfigure Wireshark installation to avoid interactive prompts
# ----------------------------------------------------------------------------
# Some packages ask questions during installation and wait for user input.
# Since image builds run automatically, interactive prompts would stop the
# process. This command sends a predefined answer to debconf so that the
# installation can continue without interruption.
#
# The pipe operator "|" redirects the output of echo to the input of
# debconf-set-selections. Similar to Bash pipelines, one command produces
# data and another command consumes it (BHB Ch.1).
#
# The value "false" disables packet capture permissions for non-root users.
# In this container, administrative tasks are performed as root, so no
# additional permissions are required.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# Install the software required for the course environment
# ----------------------------------------------------------------------------
# This RUN instruction combines package updates and software installation
# into a single step. Docker processes instructions sequentially, and each
# RUN creates a new layer. Keeping related commands together reduces the
# number of layers and helps keep the image smaller and easier to rebuild
# (BHB Ch.3).
#
# apt-get update refreshes the local package database so the system knows
# which versions are currently available.
#
# apt-get install downloads and installs the selected packages.
#
# The -y option automatically answers "yes" to installation prompts,
# allowing the build to continue without manual interaction.
#
# The --no-install-recommends option installs only required packages,
# avoiding additional software that would increase image size.
#
# The && operator executes the next command only if the previous one
# succeeds. This prevents continuing with a partially failed setup and
# follows the command chaining concepts used in shell scripting (BHB Ch.1).
#
# Backslashes "\" split long commands into multiple lines, making them
# easier to read and maintain.
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
        # === Text editors and command interpreters ===
    # Interactive shells and text editors are essential when working with
    # Bash scripts and command-line tools. Bash acts as the interface
    # between the user and the operating system, while editors such as
    # Vim and Neovim make it easier to create and modify scripts and
    # configuration files (BHB Ch.1).
    #
    # zsh provides an alternative shell with additional customization
    # features, and bash-completion improves usability by suggesting
    # commands and filenames while typing.
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Tools used throughout the course ===
    # Text processing utilities are a fundamental part of shell scripting.
    # grep searches for patterns, sed performs stream editing, and gawk
    # processes structured text. Together with make and perl, these tools
    # support automation and text manipulation tasks discussed in later
    # chapters (BHB Ch.2).
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Core UNIX utilities ===
    # These packages provide many of the standard commands used every day
    # in the shell. Tools from coreutils support file and text operations,
    # while findutils adds commands for locating files and combining them
    # with other programs. Process utilities make it possible to inspect
    # and manage running tasks, which is useful when debugging scripts
    # or monitoring applications (BHB Ch.1).
    #
    # less provides a convenient way to read long outputs, tree displays
    # directory structures in a hierarchical form, and jq simplifies the
    # processing of JSON data directly from the command line.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Manual pages and documentation ===
    # Manual pages are an important source of information when learning
    # shell commands. Commands such as man bash, man grep, and man sed
    # provide descriptions, options, and examples directly from the system.
    # Black Hat Bash emphasizes using built-in documentation to understand
    # command behavior instead of relying only on memorization (BHB Ch.1).
    #
    # These packages restore the documentation that is often removed from
    # minimal container images to reduce size.
    man-db \
    manpages \
    manpages-posix \
    \
        # === Network access and repository management tools ===
    # These utilities provide the ability to download files, interact with
    # remote repositories, and establish secure connections. Command-line
    # tools are frequently combined in Bash workflows to automate tasks
    # and exchange information between programs (BHB Ch.1).
    #
    # curl and wget retrieve data from remote servers, while git and
    # git-lfs are used to manage source code and large files. The
    # ca-certificates package allows applications to verify trusted
    # connections, and locales provides language definitions required
    # by the environment configuration used later in the image (BHB Ch.3).
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Shell script analysis tools ===
    # ShellCheck examines Bash scripts and reports common mistakes before
    # execution. Using validation tools helps improve reliability and
    # makes scripts easier to maintain and debug.
    shellcheck \
    \
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \
    masscan \
    \
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \
    tshark \
    \
    # === Utilidades de red variadas ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash


RUN chsh -s /usr/bin/zsh root


RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Jorge-Aguilar🐺]%f %F{yellow}%1~%f %(?.%F{green}ok.%F{red}mal %?)%f %# '
EOF


CMD ["/usr/bin/zsh"]