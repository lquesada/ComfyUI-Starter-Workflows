# ComfyUI-Starter-Workflows
Copyright (c) 2024, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com

A collection of simple but powerful ComfyUI workflows for Stable Diffusion with curated default settings.

## starter-person.json
A workflow to generate pictures of people and optionally upscale them, with the default settings adjusted to obtain good results fast.

Download the workflow to pysssss-workflows/: [starter-person.json](https://github.com/lquesada/ComfyUI-Starter-Workflows/blob/main/starter-person.json)

![Example](starter-person-screenshot.jpg)

### Examples

All these examples were generated with seed 1001, the default settings in the workflow, and the prompt being the concatenation of y-label and x-label, e.g. "portrait, wearing white t-shirt, african man".

Note that higher-resolution separate pictures and the XY Plot workflow can be downloaded from [here](https://github.com/lquesada/ComfyUI-Starter-Workflows/tree/main/starter-person_outputs).

![Example](starter-person-summary.jpg)

### Instructions

In order to get this workflow to work:
1. Install the missing ComfyUI custom nodes via ComfyUI Manager.
2. Download the model checkpoint to models/checkpoints:
  * https://civitai.com/models/132632?modelVersionId=429454
3. Download the vae to models/vae:
  * https://huggingface.co/stabilityai/sd-vae-ft-mse-original/blob/main/vae-ft-mse-840000-ema-pruned.ckpt
4. Download the lora to models/loras:
  * https://huggingface.co/OedoSoldier/detail-tweaker-lora/blob/main/add_detail.safetensors
5. Download the upscale model to models/upscale_models:
  * https://huggingface.co/databuzzword/esrgan/blob/main/RRDB_ESRGAN_x4.pth

You should then be able to run it.

You may tweak:
- The model, vae, prompts, loras, or upscale model (cyan boxes)
- The sampler parameters or seed (red boxes).
- The output configuration (purple boxes), for example if you want to save x4-upscaled pictures as well.

Increasing resolution above 512x768 may cause artifacts such as duplicated heads.

# License
Creative Commons License Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0)

This is a human-readable summary of the Legal Code.

You are free:

*   to Share — to copy, distribute and transmit the work
*   to Remix — to adapt the work

Under the following conditions:

*   Attribution — You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).

*   Noncommercial — You may not use this work for commercial purposes.

*   Share Alike — If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.

With the understanding that:

*   Waiver — Any of the above conditions can be waived if you get permission from the copyright holder.
*   Public Domain — Where the work or any of its elements is in the public domain under applicable law, that status is in no way affected by the license.
*   Other Rights — In no way are any of the following rights affected by the license:
       Your fair dealing or fair use rights, or other applicable copyright exceptions and limitations;
       The author's moral rights;
       Rights other persons may have either in the work itself or in how the work is used, such as publicity or privacy rights.
*   Notice — For any reuse or distribution, you must make clear to others the license terms of this work. The best way to do this is with a link to this web page.

For details and the full license text, see http://creativecommons.org/licenses/by-nc-sa/3.0/
