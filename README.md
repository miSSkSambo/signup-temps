# Sign‑Up Forms Collection

Three standalone, no‑build HTML sign‑up pages you can open directly in a browser.

## Files
- `cookie-cafe.html` — Cookie Café themed sign‑up with falling cookie particles and floating card.
- `pink-matrix-auth.html` — Flip‑card Login/Sign‑Up over a pink “Matrix” style animated background.
- `soccer-club.html` — Split‑panel Soccer Club sign‑up with a hero image and subtle ball pattern.
- `assets/soccer.jpeg` — Placeholder hero image used by `soccer-club.html`.

> Note: In `cookie-cafe.html`, the falling cookie elements use a `background: url('')`.  
> If you want visible cookies, drop an image into `assets/` (e.g. `assets/cookie.png`) and set the CSS to:  
> `.cookie { background: url('assets/cookie.png') no-repeat center/contain; }`

## Quick Preview
1. Clone or unzip this repo.
2. Double‑click any `.html` file to open it in your browser.
   - For live reload, use VS Code’s *Live Server* extension or any static server.

## Customisation Tips
- Swap fonts, colours, or copy to match your brand.
- Hook the forms to your backend by adding `action`/`method` on `<form>` tags or attaching JS `fetch()`/XHR.
- Replace `assets/soccer.jpeg` with your own image and update the path in CSS if needed.
- Social icons are inline SVGs; wire them to OAuth flows on your backend.

## Accessibility & UX
- Inputs have clear focus states and sufficient contrast.
- Consider adding form labels and client‑side validation for production use.
- Ensure keyboard navigation works as expected; add `:focus` styles where applicable.

## License
MIT — see `LICENSE`.
