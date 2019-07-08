mkdir -p ~/.pip/
echo "[global]\nindex-url = https://artifactory.service.bo1.csnzoo.com/artifactory/api/pypi/pypi-core/simple\nextra-index-url = https://artifactory.service.bo1.csnzoo.com/artifactory/api/pypi/pypi-mirror/simple" > ~/.pip/pip.conf
pip3 install wheelhaus