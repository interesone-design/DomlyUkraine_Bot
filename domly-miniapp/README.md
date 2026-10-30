# DOMLY Telegram Mini App — starter MVP

## Local run
1. Install Node.js 20+.
2. `npm install`
3. `npm run dev` for the Vite preview.
4. `npm run build && npm start` to test the production server.

## Render deployment
- Push this folder to a GitHub repository.
- Create a Render **Web Service** connected to that repository.
- Build Command: `npm install && npm run build`
- Start Command: `npm start`
- Add environment variables from `.env.example`.
- Create a Render PostgreSQL database and set `DATABASE_URL` to its Internal Database URL.
- Run `schema.sql` once against that database.

## Important current limitations
This is a visual/functional frontend prototype with demo listing cards. The listing form validates fields locally; the backend API and SQL schema are starter foundations. Production launch still requires Telegram initData verification, secure photo storage, payment provider checkout + signed webhook verification, moderation, and real seller contact handling. Do not collect real payments until these are implemented and tested.
