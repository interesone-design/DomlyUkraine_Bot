CREATE TABLE IF NOT EXISTS listings (
 id BIGSERIAL PRIMARY KEY,
 title TEXT NOT NULL,
 price_uah BIGINT NOT NULL CHECK (price_uah > 0),
 city TEXT NOT NULL,
 district TEXT,
 rooms TEXT,
 bathrooms TEXT,
 area_m2 NUMERIC(8,2) NOT NULL,
 floor TEXT,
 description TEXT,
 contact TEXT NOT NULL,
 telegram_user_id BIGINT,
 status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft','pending_payment','published','rejected','sold')),
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS listings_city_status_idx ON listings(city,status);
