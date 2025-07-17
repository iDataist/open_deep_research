uv venv ~/.deepresearch --python 3.12
source ~/.deepresearch/bin/activate
uv pip install -r pyproject.toml
cp .env.example .env
# Install dependencies and start the LangGraph server
uvx --refresh --from "langgraph-cli[inmem]" --with-editable . --python 3.12 langgraph dev --allow-blocking