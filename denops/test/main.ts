import type { Denops } from "https://deno.land/x/denops_std@v5.0.0/mod.ts";

export async function main(denops: Denops) {
  denops.dispatcher = {
    async notify() {
      await denops.cmd("doautocmd <nomodeline> User test");
    },
    async request() {
      await denops.cmd("echomsg 'requested'");
    },
  };
}
