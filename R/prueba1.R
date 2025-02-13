# Definición de las funciones matemáticas
suma <- function(x, y) {
  return(x + y)
}

resta <- function(x, y) {
  return(x - y)
}

potencia <- function(x, y) {
  return(x ^ y)
}

# Función para realizar una operación
realizar_operacion <- function(opcion, x, y) {
  if (opcion == 1) {
    resultado <- suma(x, y)
    cat("El resultado de la suma es:", resultado, "\n")
  } else if (opcion == 2) {
    resultado <- resta(x, y)
    cat("El resultado de la resta es:", resultado, "\n")
  } else if (opcion == 3) {
    resultado <- potencia(x, y)
    cat("El resultado de la potencia es:", resultado, "\n")
  } else {
    cat("Opción no válida.\n")
    return(FALSE)  # Indica que la operación no fue válida
  }
  return(TRUE)  # Indica que la operación fue válida
}

# Función para ejecutar las operaciones con opción de repetir y salir
operar <- function() {
  while (TRUE) {
    # Mensaje para el usuario
    cat("Seleccione una operación:\n")
    cat("1. Suma\n")
    cat("2. Resta\n")
    cat("3. Potencia\n")
    cat("4. Salir\n")

    # Leer la elección del usuario
    opcion <- as.integer(readline(prompt = "Ingrese el número de la operación que desea realizar: "))

    # Si el usuario elige salir
    if (opcion == 4) {
      cat("Saliendo del programa....\n")
      break  # Sale del bucle y termina el programa
    }

    # Pedir los números al usuario
    x <- as.numeric(readline(prompt = "Ingrese el primer número (x): "))
    y <- as.numeric(readline(prompt = "Ingrese el segundo número (y): "))

    # Realizar la operación
    operacion_valida <- realizar_operacion(opcion, x, y)

    # Preguntar si desea realizar otra operación solo si la operación anterior fue válida
    if (operacion_valida) {
      repetir <- readline(prompt = "¿Desea realizar otra operación? (si/no): ")
      if (tolower(repetir) != "si") {
        cat("Saliendo del programa.\n")
        break  # Sale del bucle si el usuario no desea repetir
      }
    } else {
      cat("Por favor, intente de nuevo con una opción válida.\n")
    }
  }
}

# Llama a la función para que el usuario pueda operar
operar() # Asegúrate de ejecutar esta línea DESPUÉS de definir todas las funciones
