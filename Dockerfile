# n8n on Render (soi11.com): official image, pinned by digest.
# Upgrade = change tag AND digest together, on a new docker/<version> branch.
# Previous: docker/2.44.6 (rollback needs the pre-upgrade disk snapshot, since
# 2.45-2.47 run forward-only DB migrations).
# Image keeps its own ENTRYPOINT (tini -> docker-entrypoint.sh -> n8n) and
# USER node (uid 1000, matches the disk). Render Docker Command stays empty.
FROM n8nio/n8n:2.47.4@sha256:f49b85f2bb0a492feeae78bedb406317c0b14a268076df11aee91878cac2faa6
