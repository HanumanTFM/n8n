# n8n on Render (soi11.com): official image, pinned by digest.
# Same version as the native build it replaces (upgrade/2.44.6), so the
# runtime switch runs no DB migration. Upgrade = change tag AND digest together.
# Image keeps its own ENTRYPOINT (tini -> docker-entrypoint.sh -> n8n) and
# USER node (uid 1000, matches the disk). Render Docker Command stays empty.
FROM n8nio/n8n:2.44.6@sha256:845ac21710739d7206086974295f7f93932e0fa8dd87af6d9fb0b7aa0338ad15