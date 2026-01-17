\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key c \major \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
    R1*6
    g'2. g4
    a2 a
    h c~
    c h
    a1
    a2 a
  }
}

SopranoLyrics = \lyricmode {
  Im -- pro --
  pe -- ri --
  um ex --
  pe --
  cta --
  vit cor
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key c \major \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
    R1*10
    c2. c4
    d2 d
  }
}

AltoLyrics = \lyricmode {
  Im -- pro --
  pe -- "ri -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key c \major \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
    R1*3
    g2. g4
    a2 a
    h c~
    c h
    c4 d8[ e] f2~
    f e
    d2. e4
    f1
    f2 e4 d
  }
}

TenoreLyrics = \lyricmode {
  Im -- pro --
  pe -- ri --
  um ex --
  pe --
  cta -- _ vit __
  cor
  me -- _
  um
  et mi \hy
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
    c2. c4
    d2 d
    e f~
    f e
    d4 e f2~
    f e4 d
    e1
    e2 d4 e8[ f]
    g1~
    g2. g4
    f1
    R
  }
}

BassoLyrics = \lyricmode {
  Im -- pro --
  pe -- ri --
  um ex --
  pe --
  cta -- _ vit __
  cor _
  me --
  um et mi --
  se --
  ri --
  am,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Allabreve"
    c2.-! c4-!
    d1-!
    e2-! << {
      s2
      g2. g4
      a1
      h2 c
    } \\ {
      f,2~^! %3
      f e
      d4 e f2~
      f e4 d
    } >>
    e1~
    e2 d4 e8 f
    g1
    g
    f
    f
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  <3 6>2 <\t 5>
  <4 6>4 \bassFigureExtendersOn <4 7>8 <4 8> <5 3>4. q8 \bassFigureExtendersOff
  <3 7>2 <4 6>
  <4 5> <3 \t>4 <\t 6>
  <3>1
  <6>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
