# Стажёрское задание: HTTP-клиент, Docker, Ansible

git clone https://github.com/DELLIN11/trainee.git
cd trainee

# Раздел 1
cd section-1 && ./checker.sh
> В связи с недоступностью httpstat.us в локальной сети использован httpbin.org (поведение идентично).

# Раздел 2
cd ../section-2 && docker build -t http-checker . && docker run --rm http-checker

# Раздел 3
cd ../section-3 && ansible-playbook -i inventory playbook.yml -K
