FROM gitpod/workspace-dotnet

RUN wget https://download.visualstudio.microsoft.com/download/pr/022d9abf-35f0-4fd5-8d1c-86056df76e89/477f1ebb70f314054129a9f51e9ec8ec/dotnet-sdk-2.2.207-linux-x64.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-2.2.207-linux-x64.tar.gz -C $HOME/dotnet
RUN dotnet tool install -g r2rml4net-cli
RUN printf 'export PATH="%s:$PATH"\n' "/home/gitpod/.dotnet/tools" >> $HOME/.bashrc && exit

RUN brew install coursier/formulas/coursier
RUN cs setup -y
