# https://github.com/GoogleContainerTools/distroless/blob/main/cc/README.md
FROM gcr.io/distroless/cc-debian11 as runtime

# build args used to determine which binary to use
ARG bin
ARG bin_target

# https://github.com/opencontainers/image-spec/blob/main/annotations.md
LABEL org.opencontainers.image.authors="Hendrik Maus <aidentailor@gmail.com>"
LABEL org.opencontainers.image.url="https://github.com/hendrikmaus/rust-workflows"
LABEL org.opencontainers.image.documentation="https://github.com/hendrikmaus/rust-workflows/blob/master/README.md"
LABEL org.opencontainers.image.source="https://github.com/hendrikmaus/rust-workflows/blob/master/Dockerfile"
LABEL org.opencontainers.image.description="A reference for GitHub Action workflows to use on Rust projects"

# uid 65532
USER nonroot
COPY ${bin_target:-target}/release/${bin} /usr/local/bin/
CMD ["/usr/local/bin/${bin}"]
