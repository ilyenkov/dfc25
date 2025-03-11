from sentence_transformers import SentenceTransformer

# Явно указываем путь для загрузки
model = SentenceTransformer(
    "jinaai/jina-embeddings-v3", 
    cache_folder="/app/models"
)
