FROM getfider/fider:latest

ENV PORT=3000
EXPOSE 3000

# Healthcheck to make sure container is ready
HEALTHCHECK --interval=5s --timeout=3s --retries=3 CMD curl -f http://localhost:3000/health || exit 1

CMD ["./fider"]