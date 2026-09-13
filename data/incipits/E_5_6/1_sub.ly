\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 r8 c' h8. h16 a8 a16 h
    c8 c c8. c16 h8 h4 h8
    a a g g16 g g4 g
    r d'8 d16 d e8 e c c
    c h a4 g r8 h
  }
}

SopranoLyrics = \lyricmode {
  Con -- fu -- gi -- mus, San -- cta
  De -- i Ge -- ni -- trix, in ne --
  ces -- si -- ta -- ti -- bus no -- stris,
  Do -- mi -- na no -- stra, me -- di --
  a -- trix no -- stra, nos
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e a4 a8 g f8. f16
    e8 e e8. e16 e4 e8 d16[ e]
    f8 f d8. d16 c4 r
    r8 f f f e e e e
    fis g g[ fis] g4 r8 gis
  }
}

AltoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus, San -- cta
  De -- i Ge -- ni -- trix,
  et be -- ne -- di -- cta, me -- di --
  a -- trix no -- stra, nos
}

TenoreI = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    d8. d16 d8 d e e c g
    a16[ h] c8 c[ h] c4 r
    r d8 d d8. c16 h4
  }
}

TenoreILyrics = \lyricmode {
  Li -- be -- ra nos sem -- per, Vir -- go
  glo -- ri -- o -- sa
  tu -- o fi -- li -- o
}

TenoreII = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    a8 a a e16[ f] g8 g g g
    f f f8. f16 e4 e8 e
    f16[ g] a8 g4 g r
    r a8 a h8. a16 g8 r
  }
}

TenoreIILyrics = \lyricmode {
  No -- stras de -- pre -- ca -- ti -- o -- nes
  ne de -- spi -- ci -- as, Vir -- go
  glo -- ri -- o -- sa,
  tu -- o fi -- li -- o,
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r2 r8 e e h16[ c]
    d4 h8 h c c r4
    r8 f g g, c c r4
    d8 d d d g g, r e'
  }
}

BassoLyrics = \lyricmode {
  Sed a per --
  i -- cu -- lis cun -- ctis,
  et be -- ne -- di -- cta,
  ad -- vo -- ca -- ta no -- stra, nos
}

Organo = {
  \relative c {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    << { r4 r8 c'' h4 a8. h16 } \\ { r8 e, a4~ a8 g f4 } >>
    \clef tenor a,4. e16 f g8 \clef bass e4 h16 c
    d4 h c r
    r8 f g g, c4 r
    d4. d8 g g, r e'
  }
}

BassFigures = \figuremode {
  r1
  r4. <6>8 q4. q8
  r4 <6 5>2.
  r4 <4>8 <3> r2
  <7 _+>8 <6 4> <5 \t> <\t _+>2 <_+>8
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
