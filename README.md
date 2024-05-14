# calculadora_pmt

AWS Lambda function para calcular o valor de custo mensal de um emprestimo

## Dependências

- Ruby 2.7.0
- [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)

## Testando

Utilizando o AWS CLI:

```
aws lambda invoke \
  --function-name calculadora_pmt \
  --payload fileb://./fixtures/payload.json \
  ./vadu.txt
```