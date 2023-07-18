echo "Introspecting database schema..."
npx prisma db pull
echo "Starting Prisma Studio..."
npx prisma studio