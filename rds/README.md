# GuardRails - RDS: Mysql

## RDS: Mysql - Storage Encryption

- ### rds-without-storage-encryption
- ### rds-without-storage-encryption-realtime
- ### rds-verify-without-storage-encryption-realtime

#### Descrição
Garantir que a criptografia de disco esteja ativo nas instâncias Mysql

#### Custodian
Estes guardrails monitoram instâncias que `não possuem criptografia em seu armazenamento`.

---

## RDS: Mysql - Transit Encryptiom

- ### rds-without-transit-encryption
- ### rds-without-transit-encryption-realtime

#### Descrição
Garantir que a criptografia em trânsito esteja ativa para instâncias Mysql.

#### Custodian
Estes guardrails monitoram instâncias que `não possuem criptografia em trânsito habilitada`.

---

## RDS: Mysql - Public Access

- ### rds-check-public-access
- ### rds-check-public-access-realtime
- ### rds-verify-check-public-access-realtime

#### Descrição
Garantir que as instancias do tipo Mysql não estejam públicas.

#### Custodian
Estes guardrails monitoram instâncias que `estão configuradas com acesso Público`.

---

## RDS: Mysql - IAM Authentication

- ### rds-check-iam-auth-enabled
- ### rds-check-iam-auth-enabled-realtime
- ### rds-verify-check-iam-auth-enabled-realtime

#### Descrição
Garantir que as instancias do tipo Mysql tenham autenticação através de IAM.

#### Custodian
Estes guardrails monitoram instâncias do tipo Mysql que `não possuem autenticação através de IAM`.

---

## RDS: Mysql - MultiAZ

- ### rds-check-multiAZ-enabled
- ### rds-check-multiAZ-enabled-realtime
- ### rds-verify-check-multiAZ-enabled-realtime

#### Descrição
Garantir que as instancias do tipo Mysql tenham habilitado MultiAZ.

#### Custodian
Estes guardrails monitoram instâncias do tipo Mysql que `não estão em MultiAZ`.

---

## RDS: Mysql - Auto Minor Version Upgrade

- ### rds-AutoMinorVersionUpgrade-enabled
- ### rds-AutoMinorVersionUpgrade-enabled-realtime
- ### rds-verify-AutoMinorVersionUpgrade-enabled-realtime

#### Descrição
Garantir que as instancias do tipo Mysql estejam com a feature de atualização de versão automática ativada.

#### Custodian
Estes guardrails monitoram instâncias do tipo Mysql que `não possuem a flag para atualização de versão automática`.

---

# RDS: Mysql - Default users

- ### rds-default-user-enabled
- ### rds-default-user-enabled-realtime
- ### rds-verify-default-user-enabled-realtime

#### Descrição
Garantir que instancias do tipo Mysql sejam criadas/configuradas sem a existência de usuários conhecidos.

#### Custodian
Esse guardrail monitora instâncias do tipo Mysql que `possuem usuários conhecidos em sua configuração`.

---

## RDS: Mysql - Logs enable

- ### rds-without-mysql-logs-enabled
- ### rds-mysql-logs-enabled-realtime
- ### rds-verify-mysql-logs-enabled-realtime

#### Descrição
Garantir que instancias do tipo Mysql sejam criadas/configuradas com os logs principais habilitados (audit,error,general,slowquery).

#### Custodian
Esse guardrail monitora instâncias do tipo Mysql que `não estão com os principais logs habilitados (audit,error,general,slowquery)`.

---

# GuardRails - RDS: Aurora Mysql

## RDS: Aurora Mysql - Storage Encryption

- ### rds-aurora-mysql-wout-strg-encryption
- ### rds-aurora-mysql-clu-wout-strg-encryption
- ### rds-aurora-mysql-wout-strg-encryption-realtime
- ### rds-aurora-mysql-clu-wout-strg-encryption-realtime
- ### rds-aurora-mysql-vrfy-wout-strg-encryption-realtime
- ### rds-aurora-mysql-clu-vrfy-wout-strg-ecrpt-realtime

#### Descrição
Garantir que a criptografia de disco esteja ativo nas instâncias/Clusters Aurora-Mysql

#### Custodian
Estes guardrails monitoram clusters/instâncias que `não possuem criptografia em seu armazenamento`.

---

## RDS: Aurora Mysql - Public Access

- ### rds-aurora-mysql-chk-public-access
- ### rds-aurora-mysql-chk-public-access-realtime
- ### rds-aurora-mysql-verify-chk-public-access-realtime

#### Descrição
Garantir que as instancias do tipo Aurora-Mysql não tenham acesso público.

#### Custodian
Esses guardrails monitoram instancias do tipo Aurora-Mysql que `possuem acesso público`.

---

## RDS: Aurora Mysql - IAM Authentication

- ### rds-aurora-mysql-chk-iam-auth-enabled
- ### rds-aurora-mysql-clu-chk-iam-auth-enabled
- ### rds-aurora-mysql-chk-iam-auth-enabled-realtime
- ### rds-aurora-mysql-clu-chk-iam-auth-enabled-realtime
- ### rds-aurora-mysql-vrfy-chk-iam-auth-enabled-realtime
- ### rds-aurora-mysql-clu-vrfy-chk-iam-auth-enbd-realtime

#### Descrição
Garantir que que instâncias e clusters do tipo Aurora-Mysql tenham autenticação através de IAM.

#### Custodian
Esses guardrails monitoram intâncias e clusters do tipo Aurora-Mysql que `não possuem autenticação através de IAM`.

---


## RDS: Aurora Mysql - MultiAZ

- ### rds-aurora-mysql-clu-chk-multiAZ-enabled
- ### rds-aurora-mysql-clu-chk-multiAZ-enabled-realtime
- ### rds-aurora-mysql-clu-vrfy-chk-multiAZ-enabled-realtime

#### Descrição
Garantir que clusters do tipo Aurora-Mysql tenham habilitado MultiAZ.

#### Custodian
Esses guardrails monitoram clusters do tipo Aurora-Mysql que `não estão em MultiAZ`.

---

## RDS: Aurora Mysql - Auto Minor Version Upgrade

- ### rds-aurora-mysql-AutoMinorVersionUpg-enabled
- ### rds-aurora-mysql-AutoMinorVersionUpg-enabled-realtime
- ### rds-aurora-mysql-vrfy-AutoMinorVersionUpg-enabled-rt

#### Descrição
Garantir que as instancias do tipo Aurora-Mysql estejam com a feature de atualização de versão automática ativada.

#### Custodian
Esse guardrail monitora instâncias do tipo Aurora-Mysql que `não possuem a flag para atualização de versão automática`.

---


## RDS: Aurora Mysql - Default users

- ### rds-aurora-mysql-default-user-enabled
- ### rds-aurora-mysql-clu-default-user-enabled
- ### rds-aurora-mysql-default-user-enabled-realtime
- ### rds-aurora-mysql-clu-default-user-enabled-realtime
- ### rds-aurora-mysql-vrfy-default-user-enabled-realtime
- ### rds-aurora-mysql-vrfy-clu-deflt-user-enabled-realtime


#### Descrição
Garantir que clusters e instancias do tipo Aurora-Mysql sejam criados/configurados sem a existência de usuarios conhecidos.

#### Custodian
Esse guardrail monitora clusters einstâncias do tipo Aurora-Mysql que `possuem usuários conhecidos em sua configuração`.

---

## RDS: Aurora Mysql - Logs enable

- ### rds-aurora-mysql-without-logs-enabled
- ### rds-aurora-mysql-clu-without-logs-enabled
- ### rds-aurora-mysql-logs-enabled-realtime
- ### rds-aurora-mysql-clu-logs-enabled-realtime
- ### rds-aurora-mysql-vrfy-logs-enabled-realtime
- ### rds-aurora-mysql-clu-vrfy-logs-enabled-realtime


#### Descrição
Garantir que clusters e instancias do tipo Aurora-Mysql sejam criados/configurados com os logs principais habilitados (audit,error,general,slowquery).

#### Custodian
Esse guardrail monitora clusters e instâncias do tipo Aurora-Mysql que `não estão com os principais logs habilitados (audit,error,general,slowquery)`.

---