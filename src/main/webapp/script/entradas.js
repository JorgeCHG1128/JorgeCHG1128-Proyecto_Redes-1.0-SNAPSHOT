/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++     Tickets     +++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

document.addEventListener('DOMContentLoaded', function () {

    const ticketCountInput1 = document.getElementById('ticket-count1');
    const ticketCountInput2 = document.getElementById('ticket-count2');

    // Función para guardar la cantidad de entradas seleccionadas en el almacenamiento local
    function saveTicketCount() {
        const ticketCount1 = parseInt(ticketCountInput1.value);
        const ticketCount2 = parseInt(ticketCountInput2.value);
        const totalTicketCount = ticketCount1 + ticketCount2;
        localStorage.setItem('ticketCount', totalTicketCount);
    }

    // Primera sección de tickets
    const decrementBtn1 = document.getElementById('decrement-btn1');
    const incrementBtn1 = document.getElementById('increment-btn1');
    //const ticketCountInput1 = document.getElementById('ticket-count1');

    // Event listeners para los botones de incremento y decremento
    decrementBtn1.addEventListener('click', function () {
        let count = parseInt(ticketCountInput1.value);
        if (count > 0) {
            count--;
            ticketCountInput1.value = count;
        }
        saveTicketCount();
    });

    incrementBtn1.addEventListener('click', function () {
        let count = parseInt(ticketCountInput1.value);
        count++;
        ticketCountInput1.value = count;
        saveTicketCount();
    });

    // Segunda sección de tickets
    const decrementBtn2 = document.getElementById('decrement-btn2');
    const incrementBtn2 = document.getElementById('increment-btn2');
    //const ticketCountInput2 = document.getElementById('ticket-count2');

    decrementBtn2.addEventListener('click', function () {
        let count = parseInt(ticketCountInput2.value);
        if (count > 0) {
            count--;
            ticketCountInput2.value = count;
        }
        saveTicketCount();
    });

    incrementBtn2.addEventListener('click', function () {
        let count = parseInt(ticketCountInput2.value);
        count++;
        ticketCountInput2.value = count;
        saveTicketCount();
    });

        // Llama a la función para guardar la cantidad inicial al cargar la página
        saveTicketCount();
});

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++     Linea del Tiempo     ++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

const timeOptions = document.querySelectorAll('.time-option');

timeOptions.forEach(option => {
    option.addEventListener('click', () => {
        timeOptions.forEach(opt => opt.classList.remove('active'));
        option.classList.add('active');
    });
});

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++    Asientos     +++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

document.addEventListener('DOMContentLoaded', function () {
    const seatingMap = document.getElementById('seating-map');

    const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats')) || [];

    const ticketCountDisplay = document.getElementById('ticket-count-display');

    // Recuperar la cantidad de entradas del almacenamiento local
    const ticketCount = localStorage.getItem('ticketCount') || 0;

        // Variable para mantener el conteo de asientos seleccionados
        let selectedSeatCount = 0;

        // Función para actualizar el contador de asientos seleccionados en el almacenamiento local y en el elemento de visualización
        function updateSelectedSeatCount() {
            ticketCountDisplay.textContent = `Asientos seleccionados: ${selectedSeatCount}/${ticketCount}`;
        }

    ticketCountDisplay.textContent = `Cantidad de entradas a seleccionar: ${ticketCount}`;

    // Restaurar los asientos seleccionados al cargar la página
    selectedSeats.forEach(seatId => {
        const seat = document.getElementById(seatId);
        if (seat) {
            seat.classList.add('selected');
        }
    });

    // Crear las filas de asientos
    for (let row = 1; row <= 14; row++) {
        const newRow = document.createElement('div');
        newRow.classList.add('row');

        // Crear la letra de la fila
        const rowLetter = String.fromCharCode(64 + row);
        const letterDiv = document.createElement('div');
        letterDiv.classList.add('row-letter');
        letterDiv.textContent = rowLetter;
        newRow.appendChild(letterDiv);
        
        // Crear los asientos por fila
        for (let seatNum = 1; seatNum <= 20; seatNum++) {
            const seatId = `seat-${row}-${seatNum}`;
            const seat = document.createElement('div');
            seat.classList.add('seat');
            seat.id = seatId;
            seat.textContent = seatNum;
            if (row === 5 && (seatNum === 1 || seatNum === 2 || seatNum === 19 || seatNum === 20)) {
                seat.classList.add('disabled');
            }
            if (selectedSeats.includes(seatId)) {
                seat.classList.add('selected');
            }
            seat.addEventListener('click', toggleSeat);
            newRow.appendChild(seat);
        }

        seatingMap.appendChild(newRow);
    }

    // Función para marcar o desmarcar un asiento
    function toggleSeat() {
        if (selectedSeatCount < ticketCount || this.classList.contains('selected')) {
            this.classList.toggle('selected');
            if (this.classList.contains('selected')) {
                selectedSeatCount++;
            } else {
                selectedSeatCount--;
            }
            updateSelectedSeatCount();
            updateLocalStorage();
        } else {
            alert(`Solo puedes seleccionar ${ticketCount} asientos.`);
        }
    }

    // Event listener para cada asiento
    const seats = document.querySelectorAll('.seat');
    seats.forEach(seat => {
        seat.addEventListener('click', toggleSeat);
    });

    // Actualizar el almacenamiento local con los asientos seleccionados
    function updateLocalStorage() {
        const selectedSeats = Array.from(document.querySelectorAll('.selected')).map(seat => seat.id);
        localStorage.setItem('selectedSeats', JSON.stringify(selectedSeats));
    }
});

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++     Confiteria     ++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

document.addEventListener('DOMContentLoaded', function () {
    const combos = document.querySelectorAll('.combo');

    combos.forEach(combo => {
        const addButton = combo.querySelector('.add-button');
        const subtractButton = combo.querySelector('.subtract-button');
        const quantityDisplay = combo.querySelector('.quantity');

        let quantity = 0;

        addButton.addEventListener('click', function () {
            quantity++;
            quantityDisplay.textContent = quantity;
        });

        subtractButton.addEventListener('click', function () {
            if (quantity > 0) {
                quantity--;
                quantityDisplay.textContent = quantity;
            }
        });
    });
});
