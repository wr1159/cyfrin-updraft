# Notes

- Foundry Keystore for private keys instead of .env
  - Stored in ~/.foundry
- Cast is very useful
  - Write contract: `cast send CONTRACT_ADDRESS "FUNCTION_NAME" PARAMS --account FOUNDRY_ACCOUNT`
  - Read contract: `cast call CONTRACT_ADDRESS "FUNCTION_NAME"`
  - Convert to base: `cast to-base VALUE BASE`
- Run Scripts with Forge + --account
