FROM gitpod/workspace-dotnet

RUN dotnet tool install -g r2rml4net-cli --version 0.8.0
RUN printf 'export PATH="%s:$PATH"\n' "/home/gitpod/.dotnet/tools" >> $HOME/.bashrc && exit
