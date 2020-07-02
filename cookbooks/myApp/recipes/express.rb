application '/conFusionServer' do
  git 'https://github.com/mnazir23/conFusionServer.git'
  javascript '0.12'
  npm_install
  npm_start
end