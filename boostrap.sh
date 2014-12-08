
#设置软件目录
SOFT_HOME=`cd $HOME/../soft;pwd`
export SOFT_HOME

#运行主程序
. ./lib/log.sh
info "running"
. ./lib/keeper.sh

load
