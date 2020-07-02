application '/conFusionServer' do
  git 'https://github.com/umaidashraf0/conFusionServer.git'
  javascript '0.12'
  npm_install
  npm_start
end