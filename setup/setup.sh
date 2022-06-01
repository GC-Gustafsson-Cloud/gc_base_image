apt-get update -y && apt-get upgrade -y

apt-get install python3         \
                curl            \
                htop            \
                -y              \
&& rm -rf /var/lib/apt/lists/*