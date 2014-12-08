
function info(){
  echo "$(date '+Y%-%m-%d %H:%M:%S') INFO:$1"
}
function error(){
  echo "$(date '+Y%-%m-%d %H:%M:%S') ERROR:$1"
}
function fault(){
  echo "$(date '+Y%-%m-%d %H:%M:%S') FAULT:$1"
  exit 1
}
