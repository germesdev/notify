# Webhook docker action

This action sent webhook with payload about job status

## Inputs

endpoint
step

## Example usage

```
name: Notify
if: always()
uses: germesdev/notify
with:
  endpoint: ${{ secrets.WEBHOOK_URL }}
  step: tests
```
