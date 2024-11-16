enum ToColor {
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
      case ToColor.inherit:
        return 'to-inherit';
      case ToColor.current:
        return 'to-current';
      case ToColor.transparent:
        return 'to-transparent';
      case ToColor.black:
        return 'to-black';
      case ToColor.white:
        return 'to-white';
      case ToColor.slate_50:
        return 'to-slate-50';
      case ToColor.slate_100:
        return 'to-slate-100';
      case ToColor.slate_200:
        return 'to-slate-200';
      case ToColor.slate_300:
        return 'to-slate-300';
      case ToColor.slate_400:
        return 'to-slate-400';
      case ToColor.slate_500:
        return 'to-slate-500';
      case ToColor.slate_600:
        return 'to-slate-600';
      case ToColor.slate_700:
        return 'to-slate-700';
      case ToColor.slate_800:
        return 'to-slate-800';
      case ToColor.slate_900:
        return 'to-slate-900';
      case ToColor.slate_950:
        return 'to-slate-950';
      case ToColor.gray_50:
        return 'to-gray-50';
      case ToColor.gray_100:
        return 'to-gray-100';
      case ToColor.gray_200:
        return 'to-gray-200';
      case ToColor.gray_300:
        return 'to-gray-300';
      case ToColor.gray_400:
        return 'to-gray-400';
      case ToColor.gray_500:
        return 'to-gray-500';
      case ToColor.gray_600:
        return 'to-gray-600';
      case ToColor.gray_700:
        return 'to-gray-700';
      case ToColor.gray_800:
        return 'to-gray-800';
      case ToColor.gray_900:
        return 'to-gray-900';
      case ToColor.gray_950:
        return 'to-gray-950';
      case ToColor.zinc_50:
        return 'to-zinc-50';
      case ToColor.zinc_100:
        return 'to-zinc-100';
      case ToColor.zinc_200:
        return 'to-zinc-200';
      case ToColor.zinc_300:
        return 'to-zinc-300';
      case ToColor.zinc_400:
        return 'to-zinc-400';
      case ToColor.zinc_500:
        return 'to-zinc-500';
      case ToColor.zinc_600:
        return 'to-zinc-600';
      case ToColor.zinc_700:
        return 'to-zinc-700';
      case ToColor.zinc_800:
        return 'to-zinc-800';
      case ToColor.zinc_900:
        return 'to-zinc-900';
      case ToColor.zinc_950:
        return 'to-zinc-950';
      case ToColor.neutral_50:
        return 'to-neutral-50';
      case ToColor.neutral_100:
        return 'to-neutral-100';
      case ToColor.neutral_200:
        return 'to-neutral-200';
      case ToColor.neutral_300:
        return 'to-neutral-300';
      case ToColor.neutral_400:
        return 'to-neutral-400';
      case ToColor.neutral_500:
        return 'to-neutral-500';
      case ToColor.neutral_600:
        return 'to-neutral-600';
      case ToColor.neutral_700:
        return 'to-neutral-700';
      case ToColor.neutral_800:
        return 'to-neutral-800';
      case ToColor.neutral_900:
        return 'to-neutral-900';
      case ToColor.neutral_950:
        return 'to-neutral-950';
      case ToColor.stone_50:
        return 'to-stone-50';
      case ToColor.stone_100:
        return 'to-stone-100';
      case ToColor.stone_200:
        return 'to-stone-200';
      case ToColor.stone_300:
        return 'to-stone-300';
      case ToColor.stone_400:
        return 'to-stone-400';
      case ToColor.stone_500:
        return 'to-stone-500';
      case ToColor.stone_600:
        return 'to-stone-600';
      case ToColor.stone_700:
        return 'to-stone-700';
      case ToColor.stone_800:
        return 'to-stone-800';
      case ToColor.stone_900:
        return 'to-stone-900';
      case ToColor.stone_950:
        return 'to-stone-950';
      case ToColor.red_50:
        return 'to-red-50';
      case ToColor.red_100:
        return 'to-red-100';
      case ToColor.red_200:
        return 'to-red-200';
      case ToColor.red_300:
        return 'to-red-300';
      case ToColor.red_400:
        return 'to-red-400';
      case ToColor.red_500:
        return 'to-red-500';
      case ToColor.red_600:
        return 'to-red-600';
      case ToColor.red_700:
        return 'to-red-700';
      case ToColor.red_800:
        return 'to-red-800';
      case ToColor.red_900:
        return 'to-red-900';
      case ToColor.red_950:
        return 'to-red-950';
      case ToColor.orange_50:
        return 'to-orange-50';
      case ToColor.orange_100:
        return 'to-orange-100';
      case ToColor.orange_200:
        return 'to-orange-200';
      case ToColor.orange_300:
        return 'to-orange-300';
      case ToColor.orange_400:
        return 'to-orange-400';
      case ToColor.orange_500:
        return 'to-orange-500';
      case ToColor.orange_600:
        return 'to-orange-600';
      case ToColor.orange_700:
        return 'to-orange-700';
      case ToColor.orange_800:
        return 'to-orange-800';
      case ToColor.orange_900:
        return 'to-orange-900';
      case ToColor.orange_950:
        return 'to-orange-950';
      case ToColor.amber_50:
        return 'to-amber-50';
      case ToColor.amber_100:
        return 'to-amber-100';
      case ToColor.amber_200:
        return 'to-amber-200';
      case ToColor.amber_300:
        return 'to-amber-300';
      case ToColor.amber_400:
        return 'to-amber-400';
      case ToColor.amber_500:
        return 'to-amber-500';
      case ToColor.amber_600:
        return 'to-amber-600';
      case ToColor.amber_700:
        return 'to-amber-700';
      case ToColor.amber_800:
        return 'to-amber-800';
      case ToColor.amber_900:
        return 'to-amber-900';
      case ToColor.amber_950:
        return 'to-amber-950';
      case ToColor.yellow_50:
        return 'to-yellow-50';
      case ToColor.yellow_100:
        return 'to-yellow-100';
      case ToColor.yellow_200:
        return 'to-yellow-200';
      case ToColor.yellow_300:
        return 'to-yellow-300';
      case ToColor.yellow_400:
        return 'to-yellow-400';
      case ToColor.yellow_500:
        return 'to-yellow-500';
      case ToColor.yellow_600:
        return 'to-yellow-600';
      case ToColor.yellow_700:
        return 'to-yellow-700';
      case ToColor.yellow_800:
        return 'to-yellow-800';
      case ToColor.yellow_900:
        return 'to-yellow-900';
      case ToColor.yellow_950:
        return 'to-yellow-950';
      case ToColor.lime_50:
        return 'to-lime-50';
      case ToColor.lime_100:
        return 'to-lime-100';
      case ToColor.lime_200:
        return 'to-lime-200';
      case ToColor.lime_300:
        return 'to-lime-300';
      case ToColor.lime_400:
        return 'to-lime-400';
      case ToColor.lime_500:
        return 'to-lime-500';
      case ToColor.lime_600:
        return 'to-lime-600';
      case ToColor.lime_700:
        return 'to-lime-700';
      case ToColor.lime_800:
        return 'to-lime-800';
      case ToColor.lime_900:
        return 'to-lime-900';
      case ToColor.lime_950:
        return 'to-lime-950';
      case ToColor.green_50:
        return 'to-green-50';
      case ToColor.green_100:
        return 'to-green-100';
      case ToColor.green_200:
        return 'to-green-200';
      case ToColor.green_300:
        return 'to-green-300';
      case ToColor.green_400:
        return 'to-green-400';
      case ToColor.green_500:
        return 'to-green-500';
      case ToColor.green_600:
        return 'to-green-600';
      case ToColor.green_700:
        return 'to-green-700';
      case ToColor.green_800:
        return 'to-green-800';
      case ToColor.green_900:
        return 'to-green-900';
      case ToColor.green_950:
        return 'to-green-950';
      case ToColor.emerald_50:
        return 'to-emerald-50';
      case ToColor.emerald_100:
        return 'to-emerald-100';
      case ToColor.emerald_200:
        return 'to-emerald-200';
      case ToColor.emerald_300:
        return 'to-emerald-300';
      case ToColor.emerald_400:
        return 'to-emerald-400';
      case ToColor.emerald_500:
        return 'to-emerald-500';
      case ToColor.emerald_600:
        return 'to-emerald-600';
      case ToColor.emerald_700:
        return 'to-emerald-700';
      case ToColor.emerald_800:
        return 'to-emerald-800';
      case ToColor.emerald_900:
        return 'to-emerald-900';
      case ToColor.emerald_950:
        return 'to-emerald-950';
      case ToColor.teal_50:
        return 'to-teal-50';
      case ToColor.teal_100:
        return 'to-teal-100';
      case ToColor.teal_200:
        return 'to-teal-200';
      case ToColor.teal_300:
        return 'to-teal-300';
      case ToColor.teal_400:
        return 'to-teal-400';
      case ToColor.teal_500:
        return 'to-teal-500';
      case ToColor.teal_600:
        return 'to-teal-600';
      case ToColor.teal_700:
        return 'to-teal-700';
      case ToColor.teal_800:
        return 'to-teal-800';
      case ToColor.teal_900:
        return 'to-teal-900';
      case ToColor.teal_950:
        return 'to-teal-950';
      case ToColor.cyan_50:
        return 'to-cyan-50';
      case ToColor.cyan_100:
        return 'to-cyan-100';
      case ToColor.cyan_200:
        return 'to-cyan-200';
      case ToColor.cyan_300:
        return 'to-cyan-300';
      case ToColor.cyan_400:
        return 'to-cyan-400';
      case ToColor.cyan_500:
        return 'to-cyan-500';
      case ToColor.cyan_600:
        return 'to-cyan-600';
      case ToColor.cyan_700:
        return 'to-cyan-700';
      case ToColor.cyan_800:
        return 'to-cyan-800';
      case ToColor.cyan_900:
        return 'to-cyan-900';
      case ToColor.cyan_950:
        return 'to-cyan-950';
      case ToColor.sky_50:
        return 'to-sky-50';
      case ToColor.sky_100:
        return 'to-sky-100';
      case ToColor.sky_200:
        return 'to-sky-200';
      case ToColor.sky_300:
        return 'to-sky-300';
      case ToColor.sky_400:
        return 'to-sky-400';
      case ToColor.sky_500:
        return 'to-sky-500';
      case ToColor.sky_600:
        return 'to-sky-600';
      case ToColor.sky_700:
        return 'to-sky-700';
      case ToColor.sky_800:
        return 'to-sky-800';
      case ToColor.sky_900:
        return 'to-sky-900';
      case ToColor.sky_950:
        return 'to-sky-950';
      case ToColor.blue_50:
        return 'to-blue-50';
      case ToColor.blue_100:
        return 'to-blue-100';
      case ToColor.blue_200:
        return 'to-blue-200';
      case ToColor.blue_300:
        return 'to-blue-300';
      case ToColor.blue_400:
        return 'to-blue-400';
      case ToColor.blue_500:
        return 'to-blue-500';
      case ToColor.blue_600:
        return 'to-blue-600';
      case ToColor.blue_700:
        return 'to-blue-700';
      case ToColor.blue_800:
        return 'to-blue-800';
      case ToColor.blue_900:
        return 'to-blue-900';
      case ToColor.blue_950:
        return 'to-blue-950';
      case ToColor.indigo_50:
        return 'to-indigo-50';
      case ToColor.indigo_100:
        return 'to-indigo-100';
      case ToColor.indigo_200:
        return 'to-indigo-200';
      case ToColor.indigo_300:
        return 'to-indigo-300';
      case ToColor.indigo_400:
        return 'to-indigo-400';
      case ToColor.indigo_500:
        return 'to-indigo-500';
      case ToColor.indigo_600:
        return 'to-indigo-600';
      case ToColor.indigo_700:
        return 'to-indigo-700';
      case ToColor.indigo_800:
        return 'to-indigo-800';
      case ToColor.indigo_900:
        return 'to-indigo-900';
      case ToColor.indigo_950:
        return 'to-indigo-950';
      case ToColor.violet_50:
        return 'to-violet-50';
      case ToColor.violet_100:
        return 'to-violet-100';
      case ToColor.violet_200:
        return 'to-violet-200';
      case ToColor.violet_300:
        return 'to-violet-300';
      case ToColor.violet_400:
        return 'to-violet-400';
      case ToColor.violet_500:
        return 'to-violet-500';
      case ToColor.violet_600:
        return 'to-violet-600';
      case ToColor.violet_700:
        return 'to-violet-700';
      case ToColor.violet_800:
        return 'to-violet-800';
      case ToColor.violet_900:
        return 'to-violet-900';
      case ToColor.violet_950:
        return 'to-violet-950';
      case ToColor.purple_50:
        return 'to-purple-50';
      case ToColor.purple_100:
        return 'to-purple-100';
      case ToColor.purple_200:
        return 'to-purple-200';
      case ToColor.purple_300:
        return 'to-purple-300';
      case ToColor.purple_400:
        return 'to-purple-400';
      case ToColor.purple_500:
        return 'to-purple-500';
      case ToColor.purple_600:
        return 'to-purple-600';
      case ToColor.purple_700:
        return 'to-purple-700';
      case ToColor.purple_800:
        return 'to-purple-800';
      case ToColor.purple_900:
        return 'to-purple-900';
      case ToColor.purple_950:
        return 'to-purple-950';
      case ToColor.fuchsia_50:
        return 'to-fuchsia-50';
      case ToColor.fuchsia_100:
        return 'to-fuchsia-100';
      case ToColor.fuchsia_200:
        return 'to-fuchsia-200';
      case ToColor.fuchsia_300:
        return 'to-fuchsia-300';
      case ToColor.fuchsia_400:
        return 'to-fuchsia-400';
      case ToColor.fuchsia_500:
        return 'to-fuchsia-500';
      case ToColor.fuchsia_600:
        return 'to-fuchsia-600';
      case ToColor.fuchsia_700:
        return 'to-fuchsia-700';
      case ToColor.fuchsia_800:
        return 'to-fuchsia-800';
      case ToColor.fuchsia_900:
        return 'to-fuchsia-900';
      case ToColor.fuchsia_950:
        return 'to-fuchsia-950';
      case ToColor.pink_50:
        return 'to-pink-50';
      case ToColor.pink_100:
        return 'to-pink-100';
      case ToColor.pink_200:
        return 'to-pink-200';
      case ToColor.pink_300:
        return 'to-pink-300';
      case ToColor.pink_400:
        return 'to-pink-400';
      case ToColor.pink_500:
        return 'to-pink-500';
      case ToColor.pink_600:
        return 'to-pink-600';
      case ToColor.pink_700:
        return 'to-pink-700';
      case ToColor.pink_800:
        return 'to-pink-800';
      case ToColor.pink_900:
        return 'to-pink-900';
      case ToColor.pink_950:
        return 'to-pink-950';
      case ToColor.rose_50:
        return 'to-rose-50';
      case ToColor.rose_100:
        return 'to-rose-100';
      case ToColor.rose_200:
        return 'to-rose-200';
      case ToColor.rose_300:
        return 'to-rose-300';
      case ToColor.rose_400:
        return 'to-rose-400';
      case ToColor.rose_500:
        return 'to-rose-500';
      case ToColor.rose_600:
        return 'to-rose-600';
      case ToColor.rose_700:
        return 'to-rose-700';
      case ToColor.rose_800:
        return 'to-rose-800';
      case ToColor.rose_900:
        return 'to-rose-900';
      case ToColor.rose_950:
        return 'to-rose-950';
    }
  }
}
