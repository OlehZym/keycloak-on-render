FROM quay.io/keycloak/keycloak:26.3.3

# Вмикаємо production режим
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://db:5432/keycloak
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=3aJFhjh4uIoc579JIMr1

# Створюємо адміністратора
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=9iJFZUT5gZdvH4wWXIHc

# Оптимізований старт
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]