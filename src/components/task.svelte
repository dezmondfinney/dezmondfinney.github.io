<script>
  export let task;
</script>
<div class="flex self-center min-h-12 items-center px-2 py-3 m-2 text-gray-600 rounded-[4px] shadow-md bg-white" >
  <div class="pr-3">
    <!-- <Circle /> -->
    <div class="w-5 h-5 rounded-full border border-red bg-gray-300"></div>
  </div>
  <div>
    <div class="description cursor-pointer"> {task.description} </div>

    <div class="flex details">
      {#if task.annotations}
        <!-- <Note /> -->
      {/if}

      {#if task.due}
        <!-- <Alarm /> -->
      {/if}

      {#if task.scheduled}
      <!-- <Calendar /> -->
      {/if}
    </div>
  </div>
</div>