enum FromColor {
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
      case FromColor.inherit:
        return 'from-inherit';
      case FromColor.current:
        return 'from-current';
      case FromColor.transparent:
        return 'from-transparent';
      case FromColor.black:
        return 'from-black';
      case FromColor.white:
        return 'from-white';
      case FromColor.slate_50:
        return 'from-slate-50';
      case FromColor.slate_100:
        return 'from-slate-100';
      case FromColor.slate_200:
        return 'from-slate-200';
      case FromColor.slate_300:
        return 'from-slate-300';
      case FromColor.slate_400:
        return 'from-slate-400';
      case FromColor.slate_500:
        return 'from-slate-500';
      case FromColor.slate_600:
        return 'from-slate-600';
      case FromColor.slate_700:
        return 'from-slate-700';
      case FromColor.slate_800:
        return 'from-slate-800';
      case FromColor.slate_900:
        return 'from-slate-900';
      case FromColor.slate_950:
        return 'from-slate-950';
      case FromColor.gray_50:
        return 'from-gray-50';
      case FromColor.gray_100:
        return 'from-gray-100';
      case FromColor.gray_200:
        return 'from-gray-200';
      case FromColor.gray_300:
        return 'from-gray-300';
      case FromColor.gray_400:
        return 'from-gray-400';
      case FromColor.gray_500:
        return 'from-gray-500';
      case FromColor.gray_600:
        return 'from-gray-600';
      case FromColor.gray_700:
        return 'from-gray-700';
      case FromColor.gray_800:
        return 'from-gray-800';
      case FromColor.gray_900:
        return 'from-gray-900';
      case FromColor.gray_950:
        return 'from-gray-950';
      case FromColor.zinc_50:
        return 'from-zinc-50';
      case FromColor.zinc_100:
        return 'from-zinc-100';
      case FromColor.zinc_200:
        return 'from-zinc-200';
      case FromColor.zinc_300:
        return 'from-zinc-300';
      case FromColor.zinc_400:
        return 'from-zinc-400';
      case FromColor.zinc_500:
        return 'from-zinc-500';
      case FromColor.zinc_600:
        return 'from-zinc-600';
      case FromColor.zinc_700:
        return 'from-zinc-700';
      case FromColor.zinc_800:
        return 'from-zinc-800';
      case FromColor.zinc_900:
        return 'from-zinc-900';
      case FromColor.zinc_950:
        return 'from-zinc-950';
      case FromColor.neutral_50:
        return 'from-neutral-50';
      case FromColor.neutral_100:
        return 'from-neutral-100';
      case FromColor.neutral_200:
        return 'from-neutral-200';
      case FromColor.neutral_300:
        return 'from-neutral-300';
      case FromColor.neutral_400:
        return 'from-neutral-400';
      case FromColor.neutral_500:
        return 'from-neutral-500';
      case FromColor.neutral_600:
        return 'from-neutral-600';
      case FromColor.neutral_700:
        return 'from-neutral-700';
      case FromColor.neutral_800:
        return 'from-neutral-800';
      case FromColor.neutral_900:
        return 'from-neutral-900';
      case FromColor.neutral_950:
        return 'from-neutral-950';
      case FromColor.stone_50:
        return 'from-stone-50';
      case FromColor.stone_100:
        return 'from-stone-100';
      case FromColor.stone_200:
        return 'from-stone-200';
      case FromColor.stone_300:
        return 'from-stone-300';
      case FromColor.stone_400:
        return 'from-stone-400';
      case FromColor.stone_500:
        return 'from-stone-500';
      case FromColor.stone_600:
        return 'from-stone-600';
      case FromColor.stone_700:
        return 'from-stone-700';
      case FromColor.stone_800:
        return 'from-stone-800';
      case FromColor.stone_900:
        return 'from-stone-900';
      case FromColor.stone_950:
        return 'from-stone-950';
      case FromColor.red_50:
        return 'from-red-50';
      case FromColor.red_100:
        return 'from-red-100';
      case FromColor.red_200:
        return 'from-red-200';
      case FromColor.red_300:
        return 'from-red-300';
      case FromColor.red_400:
        return 'from-red-400';
      case FromColor.red_500:
        return 'from-red-500';
      case FromColor.red_600:
        return 'from-red-600';
      case FromColor.red_700:
        return 'from-red-700';
      case FromColor.red_800:
        return 'from-red-800';
      case FromColor.red_900:
        return 'from-red-900';
      case FromColor.red_950:
        return 'from-red-950';
      case FromColor.orange_50:
        return 'from-orange-50';
      case FromColor.orange_100:
        return 'from-orange-100';
      case FromColor.orange_200:
        return 'from-orange-200';
      case FromColor.orange_300:
        return 'from-orange-300';
      case FromColor.orange_400:
        return 'from-orange-400';
      case FromColor.orange_500:
        return 'from-orange-500';
      case FromColor.orange_600:
        return 'from-orange-600';
      case FromColor.orange_700:
        return 'from-orange-700';
      case FromColor.orange_800:
        return 'from-orange-800';
      case FromColor.orange_900:
        return 'from-orange-900';
      case FromColor.orange_950:
        return 'from-orange-950';
      case FromColor.amber_50:
        return 'from-amber-50';
      case FromColor.amber_100:
        return 'from-amber-100';
      case FromColor.amber_200:
        return 'from-amber-200';
      case FromColor.amber_300:
        return 'from-amber-300';
      case FromColor.amber_400:
        return 'from-amber-400';
      case FromColor.amber_500:
        return 'from-amber-500';
      case FromColor.amber_600:
        return 'from-amber-600';
      case FromColor.amber_700:
        return 'from-amber-700';
      case FromColor.amber_800:
        return 'from-amber-800';
      case FromColor.amber_900:
        return 'from-amber-900';
      case FromColor.amber_950:
        return 'from-amber-950';
      case FromColor.yellow_50:
        return 'from-yellow-50';
      case FromColor.yellow_100:
        return 'from-yellow-100';
      case FromColor.yellow_200:
        return 'from-yellow-200';
      case FromColor.yellow_300:
        return 'from-yellow-300';
      case FromColor.yellow_400:
        return 'from-yellow-400';
      case FromColor.yellow_500:
        return 'from-yellow-500';
      case FromColor.yellow_600:
        return 'from-yellow-600';
      case FromColor.yellow_700:
        return 'from-yellow-700';
      case FromColor.yellow_800:
        return 'from-yellow-800';
      case FromColor.yellow_900:
        return 'from-yellow-900';
      case FromColor.yellow_950:
        return 'from-yellow-950';
      case FromColor.lime_50:
        return 'from-lime-50';
      case FromColor.lime_100:
        return 'from-lime-100';
      case FromColor.lime_200:
        return 'from-lime-200';
      case FromColor.lime_300:
        return 'from-lime-300';
      case FromColor.lime_400:
        return 'from-lime-400';
      case FromColor.lime_500:
        return 'from-lime-500';
      case FromColor.lime_600:
        return 'from-lime-600';
      case FromColor.lime_700:
        return 'from-lime-700';
      case FromColor.lime_800:
        return 'from-lime-800';
      case FromColor.lime_900:
        return 'from-lime-900';
      case FromColor.lime_950:
        return 'from-lime-950';
      case FromColor.green_50:
        return 'from-green-50';
      case FromColor.green_100:
        return 'from-green-100';
      case FromColor.green_200:
        return 'from-green-200';
      case FromColor.green_300:
        return 'from-green-300';
      case FromColor.green_400:
        return 'from-green-400';
      case FromColor.green_500:
        return 'from-green-500';
      case FromColor.green_600:
        return 'from-green-600';
      case FromColor.green_700:
        return 'from-green-700';
      case FromColor.green_800:
        return 'from-green-800';
      case FromColor.green_900:
        return 'from-green-900';
      case FromColor.green_950:
        return 'from-green-950';
      case FromColor.emerald_50:
        return 'from-emerald-50';
      case FromColor.emerald_100:
        return 'from-emerald-100';
      case FromColor.emerald_200:
        return 'from-emerald-200';
      case FromColor.emerald_300:
        return 'from-emerald-300';
      case FromColor.emerald_400:
        return 'from-emerald-400';
      case FromColor.emerald_500:
        return 'from-emerald-500';
      case FromColor.emerald_600:
        return 'from-emerald-600';
      case FromColor.emerald_700:
        return 'from-emerald-700';
      case FromColor.emerald_800:
        return 'from-emerald-800';
      case FromColor.emerald_900:
        return 'from-emerald-900';
      case FromColor.emerald_950:
        return 'from-emerald-950';
      case FromColor.teal_50:
        return 'from-teal-50';
      case FromColor.teal_100:
        return 'from-teal-100';
      case FromColor.teal_200:
        return 'from-teal-200';
      case FromColor.teal_300:
        return 'from-teal-300';
      case FromColor.teal_400:
        return 'from-teal-400';
      case FromColor.teal_500:
        return 'from-teal-500';
      case FromColor.teal_600:
        return 'from-teal-600';
      case FromColor.teal_700:
        return 'from-teal-700';
      case FromColor.teal_800:
        return 'from-teal-800';
      case FromColor.teal_900:
        return 'from-teal-900';
      case FromColor.teal_950:
        return 'from-teal-950';
      case FromColor.cyan_50:
        return 'from-cyan-50';
      case FromColor.cyan_100:
        return 'from-cyan-100';
      case FromColor.cyan_200:
        return 'from-cyan-200';
      case FromColor.cyan_300:
        return 'from-cyan-300';
      case FromColor.cyan_400:
        return 'from-cyan-400';
      case FromColor.cyan_500:
        return 'from-cyan-500';
      case FromColor.cyan_600:
        return 'from-cyan-600';
      case FromColor.cyan_700:
        return 'from-cyan-700';
      case FromColor.cyan_800:
        return 'from-cyan-800';
      case FromColor.cyan_900:
        return 'from-cyan-900';
      case FromColor.cyan_950:
        return 'from-cyan-950';
      case FromColor.sky_50:
        return 'from-sky-50';
      case FromColor.sky_100:
        return 'from-sky-100';
      case FromColor.sky_200:
        return 'from-sky-200';
      case FromColor.sky_300:
        return 'from-sky-300';
      case FromColor.sky_400:
        return 'from-sky-400';
      case FromColor.sky_500:
        return 'from-sky-500';
      case FromColor.sky_600:
        return 'from-sky-600';
      case FromColor.sky_700:
        return 'from-sky-700';
      case FromColor.sky_800:
        return 'from-sky-800';
      case FromColor.sky_900:
        return 'from-sky-900';
      case FromColor.sky_950:
        return 'from-sky-950';
      case FromColor.blue_50:
        return 'from-blue-50';
      case FromColor.blue_100:
        return 'from-blue-100';
      case FromColor.blue_200:
        return 'from-blue-200';
      case FromColor.blue_300:
        return 'from-blue-300';
      case FromColor.blue_400:
        return 'from-blue-400';
      case FromColor.blue_500:
        return 'from-blue-500';
      case FromColor.blue_600:
        return 'from-blue-600';
      case FromColor.blue_700:
        return 'from-blue-700';
      case FromColor.blue_800:
        return 'from-blue-800';
      case FromColor.blue_900:
        return 'from-blue-900';
      case FromColor.blue_950:
        return 'from-blue-950';
      case FromColor.indigo_50:
        return 'from-indigo-50';
      case FromColor.indigo_100:
        return 'from-indigo-100';
      case FromColor.indigo_200:
        return 'from-indigo-200';
      case FromColor.indigo_300:
        return 'from-indigo-300';
      case FromColor.indigo_400:
        return 'from-indigo-400';
      case FromColor.indigo_500:
        return 'from-indigo-500';
      case FromColor.indigo_600:
        return 'from-indigo-600';
      case FromColor.indigo_700:
        return 'from-indigo-700';
      case FromColor.indigo_800:
        return 'from-indigo-800';
      case FromColor.indigo_900:
        return 'from-indigo-900';
      case FromColor.indigo_950:
        return 'from-indigo-950';
      case FromColor.violet_50:
        return 'from-violet-50';
      case FromColor.violet_100:
        return 'from-violet-100';
      case FromColor.violet_200:
        return 'from-violet-200';
      case FromColor.violet_300:
        return 'from-violet-300';
      case FromColor.violet_400:
        return 'from-violet-400';
      case FromColor.violet_500:
        return 'from-violet-500';
      case FromColor.violet_600:
        return 'from-violet-600';
      case FromColor.violet_700:
        return 'from-violet-700';
      case FromColor.violet_800:
        return 'from-violet-800';
      case FromColor.violet_900:
        return 'from-violet-900';
      case FromColor.violet_950:
        return 'from-violet-950';
      case FromColor.purple_50:
        return 'from-purple-50';
      case FromColor.purple_100:
        return 'from-purple-100';
      case FromColor.purple_200:
        return 'from-purple-200';
      case FromColor.purple_300:
        return 'from-purple-300';
      case FromColor.purple_400:
        return 'from-purple-400';
      case FromColor.purple_500:
        return 'from-purple-500';
      case FromColor.purple_600:
        return 'from-purple-600';
      case FromColor.purple_700:
        return 'from-purple-700';
      case FromColor.purple_800:
        return 'from-purple-800';
      case FromColor.purple_900:
        return 'from-purple-900';
      case FromColor.purple_950:
        return 'from-purple-950';
      case FromColor.fuchsia_50:
        return 'from-fuchsia-50';
      case FromColor.fuchsia_100:
        return 'from-fuchsia-100';
      case FromColor.fuchsia_200:
        return 'from-fuchsia-200';
      case FromColor.fuchsia_300:
        return 'from-fuchsia-300';
      case FromColor.fuchsia_400:
        return 'from-fuchsia-400';
      case FromColor.fuchsia_500:
        return 'from-fuchsia-500';
      case FromColor.fuchsia_600:
        return 'from-fuchsia-600';
      case FromColor.fuchsia_700:
        return 'from-fuchsia-700';
      case FromColor.fuchsia_800:
        return 'from-fuchsia-800';
      case FromColor.fuchsia_900:
        return 'from-fuchsia-900';
      case FromColor.fuchsia_950:
        return 'from-fuchsia-950';
      case FromColor.pink_50:
        return 'from-pink-50';
      case FromColor.pink_100:
        return 'from-pink-100';
      case FromColor.pink_200:
        return 'from-pink-200';
      case FromColor.pink_300:
        return 'from-pink-300';
      case FromColor.pink_400:
        return 'from-pink-400';
      case FromColor.pink_500:
        return 'from-pink-500';
      case FromColor.pink_600:
        return 'from-pink-600';
      case FromColor.pink_700:
        return 'from-pink-700';
      case FromColor.pink_800:
        return 'from-pink-800';
      case FromColor.pink_900:
        return 'from-pink-900';
      case FromColor.pink_950:
        return 'from-pink-950';
      case FromColor.rose_50:
        return 'from-rose-50';
      case FromColor.rose_100:
        return 'from-rose-100';
      case FromColor.rose_200:
        return 'from-rose-200';
      case FromColor.rose_300:
        return 'from-rose-300';
      case FromColor.rose_400:
        return 'from-rose-400';
      case FromColor.rose_500:
        return 'from-rose-500';
      case FromColor.rose_600:
        return 'from-rose-600';
      case FromColor.rose_700:
        return 'from-rose-700';
      case FromColor.rose_800:
        return 'from-rose-800';
      case FromColor.rose_900:
        return 'from-rose-900';
      case FromColor.rose_950:
        return 'from-rose-950';
    }
  }
}
