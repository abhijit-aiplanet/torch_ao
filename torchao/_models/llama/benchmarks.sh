export CHECKPOINT_PATH=/content/models/Llama-3.1-8B # path to checkpoints folder

# README BENCHMARKS
# export MODEL_REPO=meta-llama/Llama-2-7b-chat-hf
# # python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8dq --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization fp6 --write_result benchmark_results.txt --precision float16
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int4wo-64 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --quantization autoquant-int4 --write_result benchmark_results.txt

# export MODEL_REPO=meta-llama/Meta-Llama-3-8B
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8dq --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization fp6 --write_result benchmark_results.txt --precision float16
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int4wo-64 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --quantization autoquant-int4 --write_result benchmark_results.txt

export MODEL_REPO=meta-llama/Meta-Llama-3.1-8B
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --write_result benchmark_results.txt
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int4wo-64 --write_result benchmark_results.txt
# Runs on H100, float8 is not supported on CUDA arch < 8.9
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization float8wo --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization float8dq-tensor --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization float8dq-wo --write_result benchmark_results.txt

# OTHER BENCHMARKS

# kv cache quantization
export MODEL_REPO=meta-llama/Meta-Llama-3.1-8B
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 8192
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 8192 --kv_cache_quantization
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 8192 --kv_cache_quantization --linear_causal_mask
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 16384
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 16384 --kv_cache_quantization
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 16384 --kv_cache_quantization --linear_causal_mask
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 32768
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 32768 --kv_cache_quantization
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 32768 --kv_cache_quantization --linear_causal_mask
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 65536
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 65536 --kv_cache_quantization
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 65536 --kv_cache_quantization --linear_causal_mask
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 131072
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 131072 --kv_cache_quantization
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt --cache_size 131072 --kv_cache_quantization --linear_causal_mask

# export MODEL_REPO=meta-llama/Llama-2-7b-chat-hf
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --precision torch.float32 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --quantization autoquant --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization fp6 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization sparse-marlin --precision float16 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization uintx-4-64 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization uintx-2-8 --write_result benchmark_results.txt

# export MODEL_REPO=meta-llama/Meta-Llama-3-8B
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --precision torch.float32 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --compile_prefill --quantization autoquant --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization fp6 --write_result benchmark_results.txt --precision float16
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization sparse-marlin --precision float16 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization uintx-4-64 --write_result benchmark_results.txt
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization uintx-2-8 --write_result benchmark_results.txt

# # Different Batch Size Benchmarks
# export MODEL_REPO=meta-llama/Meta-Llama-3-8B
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8dq --write_result benchmark_results.txt --batch_size 1
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8dq --write_result benchmark_results.txt --batch_size 32
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8dq --write_result benchmark_results.txt --batch_size 128

# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt --batch_size 1
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt --batch_size 32
# python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization int8wo --write_result benchmark_results.txt --batch_size 128

python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization autoquant --write_result benchmark_results.txt --batch_size 1
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization autoquant --write_result benchmark_results.txt --batch_size 32
python /content/torch_ao/torchao/_models/llama/generate.py --checkpoint_path /content/models/Llama-3.1-8B/original/consolidated.00.pth --compile --quantization autoquant --write_result benchmark_results.txt --batch_size 128
