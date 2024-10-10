document.addEventListener('DOMContentLoaded', function () {
    const trabajosContainer = document.querySelector('.semana-lista');

    const semanas = [
        { numero: 1, subtareas: ["Investigación", "Planificación"], githubUrl: "#" },
        { numero: 2, subtareas: ["Wireframes", "Prototipo"], githubUrl: "#" },
        { numero: 3, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/ejercicios%20semana3" },
        { numero: 4, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/ejercicios%20semana4" },
        { numero: 5, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/actividad5" },
        { numero: 6, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/semana6" },
        { numero: 7, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/semana7" },
        { numero: 8, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/semana8" },
        { numero: 9, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/semana9" },
        { numero: 10, subtareas: ["Investigación", "Planificación"], githubUrl: "https://github.com/fixdet2024/Aplicacion-Movil/tree/main/semana10" },
    ];

    semanas.forEach(semana => {
        const li = document.createElement('li');
        li.classList.add('semana-item');

        const semanaHeader = document.createElement('h3');
        semanaHeader.textContent = `Semana ${semana.numero}`;
        
        const verButton = document.createElement('button');
        verButton.innerHTML = '<i class="fas fa-tasks"></i>';
        verButton.classList.add('btn-ver');
        verButton.addEventListener('click', () => {
            const tareasContainer = li.querySelector('.tareas');
            tareasContainer.style.display = tareasContainer.style.display === 'none' ? 'block' : 'none';
        });
        semanaHeader.appendChild(verButton);
        li.appendChild(semanaHeader);

        const tareasContainer = document.createElement('div');
        tareasContainer.classList.add('tareas');
        tareasContainer.style.display = 'none';

        const subtareasList = document.createElement('ul');
        semana.subtareas.forEach(subtarea => {
            const subtareaItem = document.createElement('li');

            const downloadButton = document.createElement('a');
            downloadButton.innerHTML = '<i class="fas fa-file-pdf"></i>';
            downloadButton.href = `pdfs/semana${semana.numero}.pdf`; // Asegúrate de que los PDFs existan
            downloadButton.target = '_blank';
            downloadButton.classList.add('btn');

            const githubButton = document.createElement('a');
            githubButton.innerHTML = '<i class="fab fa-github"></i>';
            githubButton.href = semana.githubUrl;
            githubButton.target = '_blank';
            githubButton.classList.add('btn-github');

            subtareaItem.appendChild(downloadButton);
            subtareaItem.appendChild(githubButton);
            subtareasList.appendChild(subtareaItem);
        });
        tareasContainer.appendChild(subtareasList);
        li.appendChild(tareasContainer);

        trabajosContainer.appendChild(li);
    });
});
