# Usar la imagen base de PyTorch de NVIDIA
FROM nvcr.io/nvidia/pytorch:22.02-py3

# Instalar las dependencias adicionales, asegurando que opencv-python y numpy sean consistentes
RUN pip install numpy pandas \
    && pip install einops==0.6.1 \
    matplotlib==3.7.2 \
    numpy==1.23.5 \
    opencv-python==4.5.5.64 \
    PyYAML==6.0 \
    tqdm==4.65.0

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto
COPY . /app

# # Crear y establecer permisos en el directorio de datos
# RUN mkdir -p /data && chmod -R 777 /data



# Copiar los archivos de tu proyecto al contenedor (opcional)
# Si tienes un archivo requirements.txt para instalar dependencias, puedes agregarlo aquí
# COPY requirements.txt .

# Instalar cualquier dependencia adicional (opcional)
# RUN pip install --no-cache-dir -r requirements.txt

# # Exponer el puerto del notebook
# EXPOSE 8888

# # Comando por defecto (puedes omitir esto si lo especificas en docker-compose.yml)
# CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--no-browser", "--NotebookApp.token=abc123"]
