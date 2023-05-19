# Base image
FROM rg.fr-par.scw.cloud/portainy/techcode/hub/nginx:1.19

# Labels
LABEL \
  org.opencontainers.image.created="{{ CURRENT_TIME }}" \
  org.opencontainers.image.authors="amannocci <adrien.mannocci@gmail.com>" \
  org.opencontainers.image.url="{{ CI_PROJECT_URL }}" \
  org.opencontainers.image.documentation="{{ CI_PROJECT_URL }}" \
  org.opencontainers.image.source="{{ CI_PROJECT_URL }}" \
  org.opencontainers.image.version="{{ IMAGE_ID }}" \
  org.opencontainers.image.revision="{{ CI_COMMIT_SHA }}" \
  org.opencontainers.image.vendor="Techcode" \
  org.opencontainers.image.licenses="MIT License"

# Copy files
COPY pkg/docker /
COPY public/ /var/www

# Entrypoint
ENTRYPOINT ["/init"]
