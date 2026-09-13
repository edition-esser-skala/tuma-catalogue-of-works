\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c'8. c16 d8 d c c c4
    c8 h a a gis gis r4
    r8 e' e16[ d] c[ h] c8 a c4
    h8 h h4 a8 a a h
    h h h8. h16 a8 a a a
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Spi --
  ri -- tus San -- cte, De -- us,
  san -- cta Ma -- ri -- a, o --
  ra pro no -- bis, ma -- ter di --
  vi -- nae gra -- ti -- ae, ma -- ter "a -"
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e f e e e e e16 e
    e8 e e d e e e e
    e e e e e a a g!16[ fis]
    g8 fis16 e gis8 gis a e4 fis!8
    e g g g16 g g8 g g g
  }
}

AltoLyrics = \lyricmode {
  Chri -- ste e -- lei -- son, Fi -- li, Re --
  dem -- ptor mun -- di, De -- us, mi -- se --
  re -- re no -- bis, san -- cta De -- i
  ge -- ni -- trix, ma -- ter Chri -- sti, ma --
  ter ca -- stis -- si -- ma, ma -- ter ad -- "mi -"
}

TenoreI = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 h8 h a8. a16 a8 a
    a h c a h4 h8 h
    h h a[ gis] a4 r
    r2 r8 a a g16[ fis]
    g8 fis16 e e'4 e8 e e4
  }
}

TenoreILyrics = \lyricmode {
  Chri -- ste au -- di nos, Chri --
  ste ex -- au -- di nos, mi -- se --
  re -- re no -- bis,
  ma -- ter pu --
  ris -- si -- ma, o -- ra pro "no -"
}

TenoreII = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    a8. a16 h8 h c c c c
    c e16 e a,8 a h h h h
    c c h4 a r
    e'8 e e16[ d] c[ h] c8 h16 a cis8[ dis]
    e e e4 e a,8 a
  }
}

TenoreIILyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, San -- cta
  Tri -- ni -- tas, u -- nus De -- us, mi -- se --
  re -- re no -- bis,
  san -- cta vir -- go vir -- gi -- num, o --
  ra pro no -- bis, ma -- ter
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    a'8. a16 a8 gis a a, a'4
    a8 g f f e e gis gis
    a a, e'4 a, r
    R1
    e'4 e8 e cis cis cis4
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Pa --
  ter de coe -- lis, De -- us, mi -- se --
  re -- re no -- bis,

  ma -- ter in -- vi -- o -- "la -"
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a'4. gis8 a a, a'4~
    a8 g f4 e gis
    a8 a, e'4 a, r
    \clef tenor e''~ e16 d c h c8 a a g!16 fis
    \clef bass e2 cis
  }
}

BassFigures = \figuremode {
  r4 <4 2>8 <6> r2
  r8 <6> <7> <6> <_+>2
  r4 <4>8 <_+> r2
  <_!>4 <5 _+> <6> <_+>8 r16 <6\\>
  r2 <6 5!>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vla" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T 1" "trb 2" }
        \new Voice = "TenoreI" { \dynamicUp \TenoreI }
      }
      \new Lyrics \lyricsto TenoreI \TenoreILyrics

      \new Staff {
        \set Staff.instrumentName = "T 2"
        \new Voice = "TenoreII" { \dynamicUp \TenoreII }
      }
      \new Lyrics \lyricsto TenoreII \TenoreIILyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
