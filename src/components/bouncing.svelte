<script>
	export let name = "world";
	// fetch the tasks.json file and load it into the tasks variable
  import tasks from "../../public/tasks.json";
</script>

<div class="border prose bg-gray-500 rounded-2xl p-4">
  <input class="border border-red-400 p-1" bind:value={name}>
  <h3>Hello {name}!</h3>
  {#each tasks as task}
    <p>{task.description}</p>
  {/each}
  <div class="container">
    <div class="ball"></div>
  </div>
</div>

<style>

.container {
    position: relative;
    width: 300px;
    height: 300px;
    margin: 0 auto;
}

.container::before {
    position: absolute;
    content: "";
    width: 50px;
    height: 10px;
    left: 50%;
    top: 100%;
    transform: translateX(-50%);
    background: #555;
    border-radius: 50%;
    animation: shadow-animate 1s infinite;
}

.container .ball {
    position: relative;
    margin: 0 auto;
    width: 50px;
    height: 50px;
    top: 0;
    background: #5cff5c;
    border-radius: 50%;
    box-shadow: 0 0 10px #5cff5c, 0 0 30px #5cff5c;
    animation: ball-animate 1s infinite;
}

@keyframes ball-animate {
    5% {
        width: 50px;
        height: 50px;
    }

    20% {
        height: 60px;
    }

    30% {
        width: 45px;
        height: 60px;
    }

    50% {
        width: 57px;
        height: 35px;
        transform: translateY(275px);
    }

    75% {
        width: 50px;
        height: 50px;
    }
}

@keyframes shadow-animate {
    25% {
        width: 50px;
        height: 10px;
    }

    50% {
        width: 57px;
        height: 10px;
    }

    75% {
        width: 50px;
        height: 10px;
    }
}

</style>