/// Ring colors
enum RingColor {
  inherit,
  current,
  transparent,
  black,
  white,
  slate_50,
  slate_100,
  slate_200,
  slate_300,
  slate_400,
  slate_500,
  slate_600,
  slate_700,
  slate_800,
  slate_900,
  slate_950,
  gray_50,
  gray_100,
  gray_200,
  gray_300,
  gray_400,
  gray_500,
  gray_600,
  gray_700,
  gray_800,
  gray_900,
  gray_950,
  zinc_50,
  zinc_100,
  zinc_200,
  zinc_300,
  zinc_400,
  zinc_500,
  zinc_600,
  zinc_700,
  zinc_800,
  zinc_900,
  zinc_950,
  neutral_50,
  neutral_100,
  neutral_200,
  neutral_300,
  neutral_400,
  neutral_500,
  neutral_600,
  neutral_700,
  neutral_800,
  neutral_900,
  neutral_950,
  stone_50,
  stone_100,
  stone_200,
  stone_300,
  stone_400,
  stone_500,
  stone_600,
  stone_700,
  stone_800,
  stone_900,
  stone_950,
  red_50,
  red_100,
  red_200,
  red_300,
  red_400,
  red_500,
  red_600,
  red_700,
  red_800,
  red_900,
  red_950,
  orange_50,
  orange_100,
  orange_200,
  orange_300,
  orange_400,
  orange_500,
  orange_600,
  orange_700,
  orange_800,
  orange_900,
  orange_950,
  amber_50,
  amber_100,
  amber_200,
  amber_300,
  amber_400,
  amber_500,
  amber_600,
  amber_700,
  amber_800,
  amber_900,
  amber_950,
  yellow_50,
  yellow_100,
  yellow_200,
  yellow_300,
  yellow_400,
  yellow_500,
  yellow_600,
  yellow_700,
  yellow_800,
  yellow_900,
  yellow_950,
  lime_50,
  lime_100,
  lime_200,
  lime_300,
  lime_400,
  lime_500,
  lime_600,
  lime_700,
  lime_800,
  lime_900,
  lime_950,
  green_50,
  green_100,
  green_200,
  green_300,
  green_400,
  green_500,
  green_600,
  green_700,
  green_800,
  green_900,
  green_950,
  emerald_50,
  emerald_100,
  emerald_200,
  emerald_300,
  emerald_400,
  emerald_500,
  emerald_600,
  emerald_700,
  emerald_800,
  emerald_900,
  emerald_950,
  teal_50,
  teal_100,
  teal_200,
  teal_300,
  teal_400,
  teal_500,
  teal_600,
  teal_700,
  teal_800,
  teal_900,
  teal_950,
  cyan_50,
  cyan_100,
  cyan_200,
  cyan_300,
  cyan_400,
  cyan_500,
  cyan_600,
  cyan_700,
  cyan_800,
  cyan_900,
  cyan_950,
  sky_50,
  sky_100,
  sky_200,
  sky_300,
  sky_400,
  sky_500,
  sky_600,
  sky_700,
  sky_800,
  sky_900,
  sky_950,
  blue_50,
  blue_100,
  blue_200,
  blue_300,
  blue_400,
  blue_500,
  blue_600,
  blue_700,
  blue_800,
  blue_900,
  blue_950,
  indigo_50,
  indigo_100,
  indigo_200,
  indigo_300,
  indigo_400,
  indigo_500,
  indigo_600,
  indigo_700,
  indigo_800,
  indigo_900,
  indigo_950,
  violet_50,
  violet_100,
  violet_200,
  violet_300,
  violet_400,
  violet_500,
  violet_600,
  violet_700,
  violet_800,
  violet_900,
  violet_950,
  purple_50,
  purple_100,
  purple_200,
  purple_300,
  purple_400,
  purple_500,
  purple_600,
  purple_700,
  purple_800,
  purple_900,
  purple_950,
  fuchsia_50,
  fuchsia_100,
  fuchsia_200,
  fuchsia_300,
  fuchsia_400,
  fuchsia_500,
  fuchsia_600,
  fuchsia_700,
  fuchsia_800,
  fuchsia_900,
  fuchsia_950,
  pink_50,
  pink_100,
  pink_200,
  pink_300,
  pink_400,
  pink_500,
  pink_600,
  pink_700,
  pink_800,
  pink_900,
  pink_950,
  rose_50,
  rose_100,
  rose_200,
  rose_300,
  rose_400,
  rose_500,
  rose_600,
  rose_700,
  rose_800,
  rose_900,
  rose_950;

  String get className {
    switch (this) {
      case RingColor.inherit:
        return 'ring-inherit';
      case RingColor.current:
        return 'ring-current';
      case RingColor.transparent:
        return 'ring-transparent';
      case RingColor.black:
        return 'ring-black';
      case RingColor.white:
        return 'ring-white';
      case RingColor.slate_50:
        return 'ring-slate-50';
      case RingColor.slate_100:
        return 'ring-slate-100';
      case RingColor.slate_200:
        return 'ring-slate-200';
      case RingColor.slate_300:
        return 'ring-slate-300';
      case RingColor.slate_400:
        return 'ring-slate-400';
      case RingColor.slate_500:
        return 'ring-slate-500';
      case RingColor.slate_600:
        return 'ring-slate-600';
      case RingColor.slate_700:
        return 'ring-slate-700';
      case RingColor.slate_800:
        return 'ring-slate-800';
      case RingColor.slate_900:
        return 'ring-slate-900';
      case RingColor.slate_950:
        return 'ring-slate-950';
      case RingColor.gray_50:
        return 'ring-gray-50';
      case RingColor.gray_100:
        return 'ring-gray-100';
      case RingColor.gray_200:
        return 'ring-gray-200';
      case RingColor.gray_300:
        return 'ring-gray-300';
      case RingColor.gray_400:
        return 'ring-gray-400';
      case RingColor.gray_500:
        return 'ring-gray-500';
      case RingColor.gray_600:
        return 'ring-gray-600';
      case RingColor.gray_700:
        return 'ring-gray-700';
      case RingColor.gray_800:
        return 'ring-gray-800';
      case RingColor.gray_900:
        return 'ring-gray-900';
      case RingColor.gray_950:
        return 'ring-gray-950';
      case RingColor.zinc_50:
        return 'ring-zinc-50';
      case RingColor.zinc_100:
        return 'ring-zinc-100';
      case RingColor.zinc_200:
        return 'ring-zinc-200';
      case RingColor.zinc_300:
        return 'ring-zinc-300';
      case RingColor.zinc_400:
        return 'ring-zinc-400';
      case RingColor.zinc_500:
        return 'ring-zinc-500';
      case RingColor.zinc_600:
        return 'ring-zinc-600';
      case RingColor.zinc_700:
        return 'ring-zinc-700';
      case RingColor.zinc_800:
        return 'ring-zinc-800';
      case RingColor.zinc_900:
        return 'ring-zinc-900';
      case RingColor.zinc_950:
        return 'ring-zinc-950';
      case RingColor.neutral_50:
        return 'ring-neutral-50';
      case RingColor.neutral_100:
        return 'ring-neutral-100';
      case RingColor.neutral_200:
        return 'ring-neutral-200';
      case RingColor.neutral_300:
        return 'ring-neutral-300';
      case RingColor.neutral_400:
        return 'ring-neutral-400';
      case RingColor.neutral_500:
        return 'ring-neutral-500';
      case RingColor.neutral_600:
        return 'ring-neutral-600';
      case RingColor.neutral_700:
        return 'ring-neutral-700';
      case RingColor.neutral_800:
        return 'ring-neutral-800';
      case RingColor.neutral_900:
        return 'ring-neutral-900';
      case RingColor.neutral_950:
        return 'ring-neutral-950';
      case RingColor.stone_50:
        return 'ring-stone-50';
      case RingColor.stone_100:
        return 'ring-stone-100';
      case RingColor.stone_200:
        return 'ring-stone-200';
      case RingColor.stone_300:
        return 'ring-stone-300';
      case RingColor.stone_400:
        return 'ring-stone-400';
      case RingColor.stone_500:
        return 'ring-stone-500';
      case RingColor.stone_600:
        return 'ring-stone-600';
      case RingColor.stone_700:
        return 'ring-stone-700';
      case RingColor.stone_800:
        return 'ring-stone-800';
      case RingColor.stone_900:
        return 'ring-stone-900';
      case RingColor.stone_950:
        return 'ring-stone-950';
      case RingColor.red_50:
        return 'ring-red-50';
      case RingColor.red_100:
        return 'ring-red-100';
      case RingColor.red_200:
        return 'ring-red-200';
      case RingColor.red_300:
        return 'ring-red-300';
      case RingColor.red_400:
        return 'ring-red-400';
      case RingColor.red_500:
        return 'ring-red-500';
      case RingColor.red_600:
        return 'ring-red-600';
      case RingColor.red_700:
        return 'ring-red-700';
      case RingColor.red_800:
        return 'ring-red-800';
      case RingColor.red_900:
        return 'ring-red-900';
      case RingColor.red_950:
        return 'ring-red-950';
      case RingColor.orange_50:
        return 'ring-orange-50';
      case RingColor.orange_100:
        return 'ring-orange-100';
      case RingColor.orange_200:
        return 'ring-orange-200';
      case RingColor.orange_300:
        return 'ring-orange-300';
      case RingColor.orange_400:
        return 'ring-orange-400';
      case RingColor.orange_500:
        return 'ring-orange-500';
      case RingColor.orange_600:
        return 'ring-orange-600';
      case RingColor.orange_700:
        return 'ring-orange-700';
      case RingColor.orange_800:
        return 'ring-orange-800';
      case RingColor.orange_900:
        return 'ring-orange-900';
      case RingColor.orange_950:
        return 'ring-orange-950';
      case RingColor.amber_50:
        return 'ring-amber-50';
      case RingColor.amber_100:
        return 'ring-amber-100';
      case RingColor.amber_200:
        return 'ring-amber-200';
      case RingColor.amber_300:
        return 'ring-amber-300';
      case RingColor.amber_400:
        return 'ring-amber-400';
      case RingColor.amber_500:
        return 'ring-amber-500';
      case RingColor.amber_600:
        return 'ring-amber-600';
      case RingColor.amber_700:
        return 'ring-amber-700';
      case RingColor.amber_800:
        return 'ring-amber-800';
      case RingColor.amber_900:
        return 'ring-amber-900';
      case RingColor.amber_950:
        return 'ring-amber-950';
      case RingColor.yellow_50:
        return 'ring-yellow-50';
      case RingColor.yellow_100:
        return 'ring-yellow-100';
      case RingColor.yellow_200:
        return 'ring-yellow-200';
      case RingColor.yellow_300:
        return 'ring-yellow-300';
      case RingColor.yellow_400:
        return 'ring-yellow-400';
      case RingColor.yellow_500:
        return 'ring-yellow-500';
      case RingColor.yellow_600:
        return 'ring-yellow-600';
      case RingColor.yellow_700:
        return 'ring-yellow-700';
      case RingColor.yellow_800:
        return 'ring-yellow-800';
      case RingColor.yellow_900:
        return 'ring-yellow-900';
      case RingColor.yellow_950:
        return 'ring-yellow-950';
      case RingColor.lime_50:
        return 'ring-lime-50';
      case RingColor.lime_100:
        return 'ring-lime-100';
      case RingColor.lime_200:
        return 'ring-lime-200';
      case RingColor.lime_300:
        return 'ring-lime-300';
      case RingColor.lime_400:
        return 'ring-lime-400';
      case RingColor.lime_500:
        return 'ring-lime-500';
      case RingColor.lime_600:
        return 'ring-lime-600';
      case RingColor.lime_700:
        return 'ring-lime-700';
      case RingColor.lime_800:
        return 'ring-lime-800';
      case RingColor.lime_900:
        return 'ring-lime-900';
      case RingColor.lime_950:
        return 'ring-lime-950';
      case RingColor.green_50:
        return 'ring-green-50';
      case RingColor.green_100:
        return 'ring-green-100';
      case RingColor.green_200:
        return 'ring-green-200';
      case RingColor.green_300:
        return 'ring-green-300';
      case RingColor.green_400:
        return 'ring-green-400';
      case RingColor.green_500:
        return 'ring-green-500';
      case RingColor.green_600:
        return 'ring-green-600';
      case RingColor.green_700:
        return 'ring-green-700';
      case RingColor.green_800:
        return 'ring-green-800';
      case RingColor.green_900:
        return 'ring-green-900';
      case RingColor.green_950:
        return 'ring-green-950';
      case RingColor.emerald_50:
        return 'ring-emerald-50';
      case RingColor.emerald_100:
        return 'ring-emerald-100';
      case RingColor.emerald_200:
        return 'ring-emerald-200';
      case RingColor.emerald_300:
        return 'ring-emerald-300';
      case RingColor.emerald_400:
        return 'ring-emerald-400';
      case RingColor.emerald_500:
        return 'ring-emerald-500';
      case RingColor.emerald_600:
        return 'ring-emerald-600';
      case RingColor.emerald_700:
        return 'ring-emerald-700';
      case RingColor.emerald_800:
        return 'ring-emerald-800';
      case RingColor.emerald_900:
        return 'ring-emerald-900';
      case RingColor.emerald_950:
        return 'ring-emerald-950';
      case RingColor.teal_50:
        return 'ring-teal-50';
      case RingColor.teal_100:
        return 'ring-teal-100';
      case RingColor.teal_200:
        return 'ring-teal-200';
      case RingColor.teal_300:
        return 'ring-teal-300';
      case RingColor.teal_400:
        return 'ring-teal-400';
      case RingColor.teal_500:
        return 'ring-teal-500';
      case RingColor.teal_600:
        return 'ring-teal-600';
      case RingColor.teal_700:
        return 'ring-teal-700';
      case RingColor.teal_800:
        return 'ring-teal-800';
      case RingColor.teal_900:
        return 'ring-teal-900';
      case RingColor.teal_950:
        return 'ring-teal-950';
      case RingColor.cyan_50:
        return 'ring-cyan-50';
      case RingColor.cyan_100:
        return 'ring-cyan-100';
      case RingColor.cyan_200:
        return 'ring-cyan-200';
      case RingColor.cyan_300:
        return 'ring-cyan-300';
      case RingColor.cyan_400:
        return 'ring-cyan-400';
      case RingColor.cyan_500:
        return 'ring-cyan-500';
      case RingColor.cyan_600:
        return 'ring-cyan-600';
      case RingColor.cyan_700:
        return 'ring-cyan-700';
      case RingColor.cyan_800:
        return 'ring-cyan-800';
      case RingColor.cyan_900:
        return 'ring-cyan-900';
      case RingColor.cyan_950:
        return 'ring-cyan-950';
      case RingColor.sky_50:
        return 'ring-sky-50';
      case RingColor.sky_100:
        return 'ring-sky-100';
      case RingColor.sky_200:
        return 'ring-sky-200';
      case RingColor.sky_300:
        return 'ring-sky-300';
      case RingColor.sky_400:
        return 'ring-sky-400';
      case RingColor.sky_500:
        return 'ring-sky-500';
      case RingColor.sky_600:
        return 'ring-sky-600';
      case RingColor.sky_700:
        return 'ring-sky-700';
      case RingColor.sky_800:
        return 'ring-sky-800';
      case RingColor.sky_900:
        return 'ring-sky-900';
      case RingColor.sky_950:
        return 'ring-sky-950';
      case RingColor.blue_50:
        return 'ring-blue-50';
      case RingColor.blue_100:
        return 'ring-blue-100';
      case RingColor.blue_200:
        return 'ring-blue-200';
      case RingColor.blue_300:
        return 'ring-blue-300';
      case RingColor.blue_400:
        return 'ring-blue-400';
      case RingColor.blue_500:
        return 'ring-blue-500';
      case RingColor.blue_600:
        return 'ring-blue-600';
      case RingColor.blue_700:
        return 'ring-blue-700';
      case RingColor.blue_800:
        return 'ring-blue-800';
      case RingColor.blue_900:
        return 'ring-blue-900';
      case RingColor.blue_950:
        return 'ring-blue-950';
      case RingColor.indigo_50:
        return 'ring-indigo-50';
      case RingColor.indigo_100:
        return 'ring-indigo-100';
      case RingColor.indigo_200:
        return 'ring-indigo-200';
      case RingColor.indigo_300:
        return 'ring-indigo-300';
      case RingColor.indigo_400:
        return 'ring-indigo-400';
      case RingColor.indigo_500:
        return 'ring-indigo-500';
      case RingColor.indigo_600:
        return 'ring-indigo-600';
      case RingColor.indigo_700:
        return 'ring-indigo-700';
      case RingColor.indigo_800:
        return 'ring-indigo-800';
      case RingColor.indigo_900:
        return 'ring-indigo-900';
      case RingColor.indigo_950:
        return 'ring-indigo-950';
      case RingColor.violet_50:
        return 'ring-violet-50';
      case RingColor.violet_100:
        return 'ring-violet-100';
      case RingColor.violet_200:
        return 'ring-violet-200';
      case RingColor.violet_300:
        return 'ring-violet-300';
      case RingColor.violet_400:
        return 'ring-violet-400';
      case RingColor.violet_500:
        return 'ring-violet-500';
      case RingColor.violet_600:
        return 'ring-violet-600';
      case RingColor.violet_700:
        return 'ring-violet-700';
      case RingColor.violet_800:
        return 'ring-violet-800';
      case RingColor.violet_900:
        return 'ring-violet-900';
      case RingColor.violet_950:
        return 'ring-violet-950';
      case RingColor.purple_50:
        return 'ring-purple-50';
      case RingColor.purple_100:
        return 'ring-purple-100';
      case RingColor.purple_200:
        return 'ring-purple-200';
      case RingColor.purple_300:
        return 'ring-purple-300';
      case RingColor.purple_400:
        return 'ring-purple-400';
      case RingColor.purple_500:
        return 'ring-purple-500';
      case RingColor.purple_600:
        return 'ring-purple-600';
      case RingColor.purple_700:
        return 'ring-purple-700';
      case RingColor.purple_800:
        return 'ring-purple-800';
      case RingColor.purple_900:
        return 'ring-purple-900';
      case RingColor.purple_950:
        return 'ring-purple-950';
      case RingColor.fuchsia_50:
        return 'ring-fuchsia-50';
      case RingColor.fuchsia_100:
        return 'ring-fuchsia-100';
      case RingColor.fuchsia_200:
        return 'ring-fuchsia-200';
      case RingColor.fuchsia_300:
        return 'ring-fuchsia-300';
      case RingColor.fuchsia_400:
        return 'ring-fuchsia-400';
      case RingColor.fuchsia_500:
        return 'ring-fuchsia-500';
      case RingColor.fuchsia_600:
        return 'ring-fuchsia-600';
      case RingColor.fuchsia_700:
        return 'ring-fuchsia-700';
      case RingColor.fuchsia_800:
        return 'ring-fuchsia-800';
      case RingColor.fuchsia_900:
        return 'ring-fuchsia-900';
      case RingColor.fuchsia_950:
        return 'ring-fuchsia-950';
      case RingColor.pink_50:
        return 'ring-pink-50';
      case RingColor.pink_100:
        return 'ring-pink-100';
      case RingColor.pink_200:
        return 'ring-pink-200';
      case RingColor.pink_300:
        return 'ring-pink-300';
      case RingColor.pink_400:
        return 'ring-pink-400';
      case RingColor.pink_500:
        return 'ring-pink-500';
      case RingColor.pink_600:
        return 'ring-pink-600';
      case RingColor.pink_700:
        return 'ring-pink-700';
      case RingColor.pink_800:
        return 'ring-pink-800';
      case RingColor.pink_900:
        return 'ring-pink-900';
      case RingColor.pink_950:
        return 'ring-pink-950';
      case RingColor.rose_50:
        return 'ring-rose-50';
      case RingColor.rose_100:
        return 'ring-rose-100';
      case RingColor.rose_200:
        return 'ring-rose-200';
      case RingColor.rose_300:
        return 'ring-rose-300';
      case RingColor.rose_400:
        return 'ring-rose-400';
      case RingColor.rose_500:
        return 'ring-rose-500';
      case RingColor.rose_600:
        return 'ring-rose-600';
      case RingColor.rose_700:
        return 'ring-rose-700';
      case RingColor.rose_800:
        return 'ring-rose-800';
      case RingColor.rose_900:
        return 'ring-rose-900';
      case RingColor.rose_950:
        return 'ring-rose-950';
    }
  }
}
