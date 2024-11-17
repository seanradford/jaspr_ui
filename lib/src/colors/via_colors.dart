/// Via colors
enum ViaColor {
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
      case ViaColor.inherit:
        return 'via-inherit';
      case ViaColor.current:
        return 'via-current';
      case ViaColor.transparent:
        return 'via-transparent';
      case ViaColor.black:
        return 'via-black';
      case ViaColor.white:
        return 'via-white';
      case ViaColor.slate_50:
        return 'via-slate-50';
      case ViaColor.slate_100:
        return 'via-slate-100';
      case ViaColor.slate_200:
        return 'via-slate-200';
      case ViaColor.slate_300:
        return 'via-slate-300';
      case ViaColor.slate_400:
        return 'via-slate-400';
      case ViaColor.slate_500:
        return 'via-slate-500';
      case ViaColor.slate_600:
        return 'via-slate-600';
      case ViaColor.slate_700:
        return 'via-slate-700';
      case ViaColor.slate_800:
        return 'via-slate-800';
      case ViaColor.slate_900:
        return 'via-slate-900';
      case ViaColor.slate_950:
        return 'via-slate-950';
      case ViaColor.gray_50:
        return 'via-gray-50';
      case ViaColor.gray_100:
        return 'via-gray-100';
      case ViaColor.gray_200:
        return 'via-gray-200';
      case ViaColor.gray_300:
        return 'via-gray-300';
      case ViaColor.gray_400:
        return 'via-gray-400';
      case ViaColor.gray_500:
        return 'via-gray-500';
      case ViaColor.gray_600:
        return 'via-gray-600';
      case ViaColor.gray_700:
        return 'via-gray-700';
      case ViaColor.gray_800:
        return 'via-gray-800';
      case ViaColor.gray_900:
        return 'via-gray-900';
      case ViaColor.gray_950:
        return 'via-gray-950';
      case ViaColor.zinc_50:
        return 'via-zinc-50';
      case ViaColor.zinc_100:
        return 'via-zinc-100';
      case ViaColor.zinc_200:
        return 'via-zinc-200';
      case ViaColor.zinc_300:
        return 'via-zinc-300';
      case ViaColor.zinc_400:
        return 'via-zinc-400';
      case ViaColor.zinc_500:
        return 'via-zinc-500';
      case ViaColor.zinc_600:
        return 'via-zinc-600';
      case ViaColor.zinc_700:
        return 'via-zinc-700';
      case ViaColor.zinc_800:
        return 'via-zinc-800';
      case ViaColor.zinc_900:
        return 'via-zinc-900';
      case ViaColor.zinc_950:
        return 'via-zinc-950';
      case ViaColor.neutral_50:
        return 'via-neutral-50';
      case ViaColor.neutral_100:
        return 'via-neutral-100';
      case ViaColor.neutral_200:
        return 'via-neutral-200';
      case ViaColor.neutral_300:
        return 'via-neutral-300';
      case ViaColor.neutral_400:
        return 'via-neutral-400';
      case ViaColor.neutral_500:
        return 'via-neutral-500';
      case ViaColor.neutral_600:
        return 'via-neutral-600';
      case ViaColor.neutral_700:
        return 'via-neutral-700';
      case ViaColor.neutral_800:
        return 'via-neutral-800';
      case ViaColor.neutral_900:
        return 'via-neutral-900';
      case ViaColor.neutral_950:
        return 'via-neutral-950';
      case ViaColor.stone_50:
        return 'via-stone-50';
      case ViaColor.stone_100:
        return 'via-stone-100';
      case ViaColor.stone_200:
        return 'via-stone-200';
      case ViaColor.stone_300:
        return 'via-stone-300';
      case ViaColor.stone_400:
        return 'via-stone-400';
      case ViaColor.stone_500:
        return 'via-stone-500';
      case ViaColor.stone_600:
        return 'via-stone-600';
      case ViaColor.stone_700:
        return 'via-stone-700';
      case ViaColor.stone_800:
        return 'via-stone-800';
      case ViaColor.stone_900:
        return 'via-stone-900';
      case ViaColor.stone_950:
        return 'via-stone-950';
      case ViaColor.red_50:
        return 'via-red-50';
      case ViaColor.red_100:
        return 'via-red-100';
      case ViaColor.red_200:
        return 'via-red-200';
      case ViaColor.red_300:
        return 'via-red-300';
      case ViaColor.red_400:
        return 'via-red-400';
      case ViaColor.red_500:
        return 'via-red-500';
      case ViaColor.red_600:
        return 'via-red-600';
      case ViaColor.red_700:
        return 'via-red-700';
      case ViaColor.red_800:
        return 'via-red-800';
      case ViaColor.red_900:
        return 'via-red-900';
      case ViaColor.red_950:
        return 'via-red-950';
      case ViaColor.orange_50:
        return 'via-orange-50';
      case ViaColor.orange_100:
        return 'via-orange-100';
      case ViaColor.orange_200:
        return 'via-orange-200';
      case ViaColor.orange_300:
        return 'via-orange-300';
      case ViaColor.orange_400:
        return 'via-orange-400';
      case ViaColor.orange_500:
        return 'via-orange-500';
      case ViaColor.orange_600:
        return 'via-orange-600';
      case ViaColor.orange_700:
        return 'via-orange-700';
      case ViaColor.orange_800:
        return 'via-orange-800';
      case ViaColor.orange_900:
        return 'via-orange-900';
      case ViaColor.orange_950:
        return 'via-orange-950';
      case ViaColor.amber_50:
        return 'via-amber-50';
      case ViaColor.amber_100:
        return 'via-amber-100';
      case ViaColor.amber_200:
        return 'via-amber-200';
      case ViaColor.amber_300:
        return 'via-amber-300';
      case ViaColor.amber_400:
        return 'via-amber-400';
      case ViaColor.amber_500:
        return 'via-amber-500';
      case ViaColor.amber_600:
        return 'via-amber-600';
      case ViaColor.amber_700:
        return 'via-amber-700';
      case ViaColor.amber_800:
        return 'via-amber-800';
      case ViaColor.amber_900:
        return 'via-amber-900';
      case ViaColor.amber_950:
        return 'via-amber-950';
      case ViaColor.yellow_50:
        return 'via-yellow-50';
      case ViaColor.yellow_100:
        return 'via-yellow-100';
      case ViaColor.yellow_200:
        return 'via-yellow-200';
      case ViaColor.yellow_300:
        return 'via-yellow-300';
      case ViaColor.yellow_400:
        return 'via-yellow-400';
      case ViaColor.yellow_500:
        return 'via-yellow-500';
      case ViaColor.yellow_600:
        return 'via-yellow-600';
      case ViaColor.yellow_700:
        return 'via-yellow-700';
      case ViaColor.yellow_800:
        return 'via-yellow-800';
      case ViaColor.yellow_900:
        return 'via-yellow-900';
      case ViaColor.yellow_950:
        return 'via-yellow-950';
      case ViaColor.lime_50:
        return 'via-lime-50';
      case ViaColor.lime_100:
        return 'via-lime-100';
      case ViaColor.lime_200:
        return 'via-lime-200';
      case ViaColor.lime_300:
        return 'via-lime-300';
      case ViaColor.lime_400:
        return 'via-lime-400';
      case ViaColor.lime_500:
        return 'via-lime-500';
      case ViaColor.lime_600:
        return 'via-lime-600';
      case ViaColor.lime_700:
        return 'via-lime-700';
      case ViaColor.lime_800:
        return 'via-lime-800';
      case ViaColor.lime_900:
        return 'via-lime-900';
      case ViaColor.lime_950:
        return 'via-lime-950';
      case ViaColor.green_50:
        return 'via-green-50';
      case ViaColor.green_100:
        return 'via-green-100';
      case ViaColor.green_200:
        return 'via-green-200';
      case ViaColor.green_300:
        return 'via-green-300';
      case ViaColor.green_400:
        return 'via-green-400';
      case ViaColor.green_500:
        return 'via-green-500';
      case ViaColor.green_600:
        return 'via-green-600';
      case ViaColor.green_700:
        return 'via-green-700';
      case ViaColor.green_800:
        return 'via-green-800';
      case ViaColor.green_900:
        return 'via-green-900';
      case ViaColor.green_950:
        return 'via-green-950';
      case ViaColor.emerald_50:
        return 'via-emerald-50';
      case ViaColor.emerald_100:
        return 'via-emerald-100';
      case ViaColor.emerald_200:
        return 'via-emerald-200';
      case ViaColor.emerald_300:
        return 'via-emerald-300';
      case ViaColor.emerald_400:
        return 'via-emerald-400';
      case ViaColor.emerald_500:
        return 'via-emerald-500';
      case ViaColor.emerald_600:
        return 'via-emerald-600';
      case ViaColor.emerald_700:
        return 'via-emerald-700';
      case ViaColor.emerald_800:
        return 'via-emerald-800';
      case ViaColor.emerald_900:
        return 'via-emerald-900';
      case ViaColor.emerald_950:
        return 'via-emerald-950';
      case ViaColor.teal_50:
        return 'via-teal-50';
      case ViaColor.teal_100:
        return 'via-teal-100';
      case ViaColor.teal_200:
        return 'via-teal-200';
      case ViaColor.teal_300:
        return 'via-teal-300';
      case ViaColor.teal_400:
        return 'via-teal-400';
      case ViaColor.teal_500:
        return 'via-teal-500';
      case ViaColor.teal_600:
        return 'via-teal-600';
      case ViaColor.teal_700:
        return 'via-teal-700';
      case ViaColor.teal_800:
        return 'via-teal-800';
      case ViaColor.teal_900:
        return 'via-teal-900';
      case ViaColor.teal_950:
        return 'via-teal-950';
      case ViaColor.cyan_50:
        return 'via-cyan-50';
      case ViaColor.cyan_100:
        return 'via-cyan-100';
      case ViaColor.cyan_200:
        return 'via-cyan-200';
      case ViaColor.cyan_300:
        return 'via-cyan-300';
      case ViaColor.cyan_400:
        return 'via-cyan-400';
      case ViaColor.cyan_500:
        return 'via-cyan-500';
      case ViaColor.cyan_600:
        return 'via-cyan-600';
      case ViaColor.cyan_700:
        return 'via-cyan-700';
      case ViaColor.cyan_800:
        return 'via-cyan-800';
      case ViaColor.cyan_900:
        return 'via-cyan-900';
      case ViaColor.cyan_950:
        return 'via-cyan-950';
      case ViaColor.sky_50:
        return 'via-sky-50';
      case ViaColor.sky_100:
        return 'via-sky-100';
      case ViaColor.sky_200:
        return 'via-sky-200';
      case ViaColor.sky_300:
        return 'via-sky-300';
      case ViaColor.sky_400:
        return 'via-sky-400';
      case ViaColor.sky_500:
        return 'via-sky-500';
      case ViaColor.sky_600:
        return 'via-sky-600';
      case ViaColor.sky_700:
        return 'via-sky-700';
      case ViaColor.sky_800:
        return 'via-sky-800';
      case ViaColor.sky_900:
        return 'via-sky-900';
      case ViaColor.sky_950:
        return 'via-sky-950';
      case ViaColor.blue_50:
        return 'via-blue-50';
      case ViaColor.blue_100:
        return 'via-blue-100';
      case ViaColor.blue_200:
        return 'via-blue-200';
      case ViaColor.blue_300:
        return 'via-blue-300';
      case ViaColor.blue_400:
        return 'via-blue-400';
      case ViaColor.blue_500:
        return 'via-blue-500';
      case ViaColor.blue_600:
        return 'via-blue-600';
      case ViaColor.blue_700:
        return 'via-blue-700';
      case ViaColor.blue_800:
        return 'via-blue-800';
      case ViaColor.blue_900:
        return 'via-blue-900';
      case ViaColor.blue_950:
        return 'via-blue-950';
      case ViaColor.indigo_50:
        return 'via-indigo-50';
      case ViaColor.indigo_100:
        return 'via-indigo-100';
      case ViaColor.indigo_200:
        return 'via-indigo-200';
      case ViaColor.indigo_300:
        return 'via-indigo-300';
      case ViaColor.indigo_400:
        return 'via-indigo-400';
      case ViaColor.indigo_500:
        return 'via-indigo-500';
      case ViaColor.indigo_600:
        return 'via-indigo-600';
      case ViaColor.indigo_700:
        return 'via-indigo-700';
      case ViaColor.indigo_800:
        return 'via-indigo-800';
      case ViaColor.indigo_900:
        return 'via-indigo-900';
      case ViaColor.indigo_950:
        return 'via-indigo-950';
      case ViaColor.violet_50:
        return 'via-violet-50';
      case ViaColor.violet_100:
        return 'via-violet-100';
      case ViaColor.violet_200:
        return 'via-violet-200';
      case ViaColor.violet_300:
        return 'via-violet-300';
      case ViaColor.violet_400:
        return 'via-violet-400';
      case ViaColor.violet_500:
        return 'via-violet-500';
      case ViaColor.violet_600:
        return 'via-violet-600';
      case ViaColor.violet_700:
        return 'via-violet-700';
      case ViaColor.violet_800:
        return 'via-violet-800';
      case ViaColor.violet_900:
        return 'via-violet-900';
      case ViaColor.violet_950:
        return 'via-violet-950';
      case ViaColor.purple_50:
        return 'via-purple-50';
      case ViaColor.purple_100:
        return 'via-purple-100';
      case ViaColor.purple_200:
        return 'via-purple-200';
      case ViaColor.purple_300:
        return 'via-purple-300';
      case ViaColor.purple_400:
        return 'via-purple-400';
      case ViaColor.purple_500:
        return 'via-purple-500';
      case ViaColor.purple_600:
        return 'via-purple-600';
      case ViaColor.purple_700:
        return 'via-purple-700';
      case ViaColor.purple_800:
        return 'via-purple-800';
      case ViaColor.purple_900:
        return 'via-purple-900';
      case ViaColor.purple_950:
        return 'via-purple-950';
      case ViaColor.fuchsia_50:
        return 'via-fuchsia-50';
      case ViaColor.fuchsia_100:
        return 'via-fuchsia-100';
      case ViaColor.fuchsia_200:
        return 'via-fuchsia-200';
      case ViaColor.fuchsia_300:
        return 'via-fuchsia-300';
      case ViaColor.fuchsia_400:
        return 'via-fuchsia-400';
      case ViaColor.fuchsia_500:
        return 'via-fuchsia-500';
      case ViaColor.fuchsia_600:
        return 'via-fuchsia-600';
      case ViaColor.fuchsia_700:
        return 'via-fuchsia-700';
      case ViaColor.fuchsia_800:
        return 'via-fuchsia-800';
      case ViaColor.fuchsia_900:
        return 'via-fuchsia-900';
      case ViaColor.fuchsia_950:
        return 'via-fuchsia-950';
      case ViaColor.pink_50:
        return 'via-pink-50';
      case ViaColor.pink_100:
        return 'via-pink-100';
      case ViaColor.pink_200:
        return 'via-pink-200';
      case ViaColor.pink_300:
        return 'via-pink-300';
      case ViaColor.pink_400:
        return 'via-pink-400';
      case ViaColor.pink_500:
        return 'via-pink-500';
      case ViaColor.pink_600:
        return 'via-pink-600';
      case ViaColor.pink_700:
        return 'via-pink-700';
      case ViaColor.pink_800:
        return 'via-pink-800';
      case ViaColor.pink_900:
        return 'via-pink-900';
      case ViaColor.pink_950:
        return 'via-pink-950';
      case ViaColor.rose_50:
        return 'via-rose-50';
      case ViaColor.rose_100:
        return 'via-rose-100';
      case ViaColor.rose_200:
        return 'via-rose-200';
      case ViaColor.rose_300:
        return 'via-rose-300';
      case ViaColor.rose_400:
        return 'via-rose-400';
      case ViaColor.rose_500:
        return 'via-rose-500';
      case ViaColor.rose_600:
        return 'via-rose-600';
      case ViaColor.rose_700:
        return 'via-rose-700';
      case ViaColor.rose_800:
        return 'via-rose-800';
      case ViaColor.rose_900:
        return 'via-rose-900';
      case ViaColor.rose_950:
        return 'via-rose-950';
    }
  }
}
