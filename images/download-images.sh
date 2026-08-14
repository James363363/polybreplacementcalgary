#!/bin/bash
# Downloads the AI-generated hero images for this site from Higgsfield's CDN
# into this /images/ folder with the correct filenames the HTML expects.
#
# WHY THIS SCRIPT EXISTS: the environment that built this site could not reach
# the Higgsfield CDN directly (outbound network is restricted to package
# registries only), so the HTML references local /images/*.jpg paths that
# don't exist yet. Run this script once, from a machine with normal internet
# access, to fetch the real files into place.
#
# Usage: bash download-images.sh

set -e
cd "$(dirname "$0")"

curl -sL -o hero-pillar.jpg          "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_8aa2f0ce-5ce1-41a3-b0a6-5ff37cb4d7c7.png"
curl -sL -o hero-warning-signs.jpg   "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_42889210-4c4d-48e4-9f1f-d2f63e112260.png"
curl -sL -o hero-cost.jpg            "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_b4b4c63e-3244-4b73-8b15-23af287a26c1.png"
curl -sL -o hero-insurance.jpg       "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_ac7f394c-1a10-4d62-b552-d530dad0a8bd.png"
curl -sL -o hero-vs-pex.jpg          "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_8c045d5d-9629-4efe-bb0d-e759a3902e52.png"
curl -sL -o hero-buying-selling.jpg  "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_9acf4b77-dcce-48d6-815b-c9565e8dfec6.png"
curl -sL -o hero-emergency.jpg       "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_67fe7225-7568-43b7-906c-78a46c37f36a.png"
curl -sL -o hero-process.jpg         "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_cf5bc619-f7ea-4ee4-a2fc-307350a3b68d.png"
curl -sL -o hero-condo.jpg           "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_f649f317-30a7-466a-8f3c-aa1928619d51.png"
curl -sL -o hero-lawsuit.jpg         "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_ee20b476-0d40-4f09-b3b8-a092c22407e1.png"
curl -sL -o hero-about.jpg           "https://d8j0ntlcm91z4.cloudfront.net/user_3HYF9E90Q2MvicopEB7zUzCQ6pl/hf_20260813_193231_f18b3e52-b686-47eb-89cc-ca38390c8fef.png"

echo "Done. 11 images downloaded into $(pwd)"
echo "NOTE: Higgsfield CDN links are not guaranteed to stay live indefinitely — run this soon, and keep the downloaded files as the permanent, self-hosted copies."
