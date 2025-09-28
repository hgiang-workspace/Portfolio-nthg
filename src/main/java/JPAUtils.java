// src/main/java/com/example/util/JPAUtil.java

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.HashMap;
import java.util.Map;

public class JPAUtils {
    private static final EntityManagerFactory emf;

    static {
        Map<String, String> props = new HashMap<>();

        // Đọc từ environment variables (set trên Render)
        String host = System.getenv("DB_HOST");
        String port = System.getenv("DB_PORT");
        String db   = System.getenv("DB_NAME");
        String user = System.getenv("DB_USER");
        String pass = System.getenv("DB_PASSWORD");

        // Nếu Render cung cấp DATABASE_URL (postgres://user:pass@host:port/db), bạn có thể parse nó hoặc
        // set trực tiếp biến DB_* từ dashboard Render (dễ nhất).
        String jdbcUrl = "jdbc:postgresql://" + host + ":" + port + "/" + db;
        props.put("javax.persistence.jdbc.url", jdbcUrl);
        props.put("javax.persistence.jdbc.user", user);
        props.put("javax.persistence.jdbc.password", pass);
        props.put("javax.persistence.jdbc.driver", "org.postgresql.Driver");

        // Hibernate props
        props.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQL81Dialect");
        props.put("hibernate.hbm2ddl.auto", "update"); // dev: update, prod: validate/none
        props.put("hibernate.show_sql", "false");

        emf = Persistence.createEntityManagerFactory("portfolioPU", props);
    }

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public static void close() {
        if (emf != null && emf.isOpen()) emf.close();
    }
}
