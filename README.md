# test-scenario-generator

This setup creates a local Ollama custom model named `test-scenario-generator` for generating structured test scenarios from business rules, BRD documents, TBRD documents, or business requirements.

This is not fine-tuning. It creates a custom Ollama model wrapper with fixed instructions in a `Modelfile`. The original `qwen2.5-coder:7b` model weights are not modified.

## Prerequisites

- Ollama must be installed locally.
- The commands use only the Ollama CLI.
- No HTTP API, Python scripts, or `localhost:11434` calls are used.

## Pull the base model

```bash
ollama pull qwen2.5-coder:7b
```

## Create the custom model

From this folder, run:

```bash
ollama create test-scenario-generator -f Modelfile
```

## Run the custom model

Interactive mode:

```bash
ollama run test-scenario-generator
```

Then paste business rules, BRD content, or TBRD content into the prompt.

Run with the sample input:

```bash
ollama run test-scenario-generator < examples/sample_input.txt
```

## Windows Command Prompt

Pull the base model:

```bat
ollama pull qwen2.5-coder:7b
```

Create the custom model:

```bat
scripts\create_model.bat
```

Run the custom model interactively:

```bat
ollama run test-scenario-generator
```

Run the sample input:

```bat
scripts\run_sample.bat
```

## Linux/macOS

Pull the base model:

```bash
ollama pull qwen2.5-coder:7b
```

Make scripts executable if needed:

```bash
chmod +x scripts/create_model.sh scripts/run_sample.sh
```

Create the custom model:

```bash
./scripts/create_model.sh
```

Run the custom model interactively:

```bash
ollama run test-scenario-generator
```

Run the sample input:

```bash
./scripts/run_sample.sh
```

## Change the custom model name

To use a different custom model name later, replace `test-scenario-generator` in these files:

- `scripts/create_model.bat`
- `scripts/create_model.sh`
- `scripts/run_sample.bat`
- `scripts/run_sample.sh`
- This README, if you want the documentation to match

Then recreate the model with the new name:

```bash
ollama create your-new-model-name -f Modelfile
```
