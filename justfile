branch := "main"

default:
    @just --list

# Serve the static site locally with Python.
serve:
    python3 -m http.server 4173 --directory public

# Run the Worker locally through Wrangler.
cf-dev:
    bunx wrangler dev

# Deploy the Worker and static assets.
cf-deploy:
    bunx wrangler deploy

# Push main to GitHub. A Git-connected Worker build can auto-deploy this.
ship:
    git push origin {{branch}}

# Check the repo and important static assets.
check:
    test -f public/index.html
    test -f public/assets/icon.png
    test -f public/assets/favicon.png
    test -f "public/manuals/Army Counter Guide.html"
    test -f "public/manuals/Field Manual.pdf"
    rg -n "0AG|0ag" public README.md && exit 1 || true
