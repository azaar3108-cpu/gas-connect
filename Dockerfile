FROM node:22-alpine
WORKDIR /app
ADD ["gas-connect-app (1).tar.gz", "/app/"]
ENV NODE_ENV=production HOST=0.0.0.0 TRUST_PROXY=true DB_DRIVER=sqlite SQLITE_PATH=/app/data/gas-connect.sqlite UPLOAD_DIR=/app/data/uploads MAIL_DRIVER=console DEV_MAIL_PREVIEW=false REQUIRE_EMAIL_VERIFICATION=false ALLOW_DEMO_SEED=true AUTO_SEED_DEMO=true ALLOW_DEMO_LOGIN=true PROPOSAL_MODERATION=pre
EXPOSE 10000
CMD ["node", "--disable-warning=ExperimentalWarning", "server/index.js"]
