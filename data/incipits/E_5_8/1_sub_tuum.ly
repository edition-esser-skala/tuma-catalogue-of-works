\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    c'4-\tutti d c8 c c4
    c8 h a a gis4 r
    r8 e'~ e16 d c h c8 a c4
    h8 h h4 a8 a a h
    h h h h a a a a
    a8. a16 a8 a g g g4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    r8 e-\tutti f e e e e8 e16 e
    e8 e e d e e e e
    e e e e e a a g!16 fis
    g8 fis16 e gis8 gis a e4 fis8
    e g g g16 g g8 g g g
    g8. f!16 f4 f8 f f f
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    c'4^\tutti d c8 c c c
    c h a8. a16 gis4 r
    r8 e' e16[ d] c[ h] c8 a c8. c16
    h4 h8 h a a a h
    h h h h a8. a16 a4
    a8 a a a g g g4
  }
}

SopranoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus,
  San -- _ cta De -- i Ge -- ni --
  trix. No -- stras de -- pre -- ca -- ti --
  o -- nes ne de -- spi -- ci -- as
  in ne -- ces -- si -- ta -- ti -- bus
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r8 e^\tutti f[ e] e e e8. e16
    e8 e e d e e e e
    e e e e16 e e8 a a g!16[ fis]
    g8 fis16 e gis8 gis a e4 fis8
    e g g4 g g8 g
    g8. f!16 f4 f8 f f f16 f
  }
}

AltoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus, prae -- si -- di --
  um con -- fu -- gi -- mus, San -- cta De -- i
  Ge -- ni -- trix. No -- stras de -- _ pre --
  ca -- ti -- o -- nes ne de --
  spi -- ci -- as, a per -- i -- cu -- lis
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r4 h^\tutti a a8 a
    a h c a h4 h
    h8 a a gis a4 r
    r2 r8 a4 g16[ fis]
    g8 fis16 e e'4 e e
    d d8 d d d d4
  }
}

TenoreLyrics = \lyricmode {
  Sub tu -- um prae --
  si -- di -- um, prae -- si -- di --
  um con -- fu -- gi -- mus,
  De -- i
  Ge -- ni -- trix. No -- stras, no --
  stras de -- pre -- ca -- ti -- "o -"
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    a'4^\tutti a8[ gis] a a, a'8. a16
    a8 g f8. f16 e4 gis8 gis
    a a, e'8. e16 a,4 r
    R1
    e'8 e e e cis cis cis4
    d d8 d h h h4
  }
}

BassoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus, San -- cta
  De -- i Ge -- ni -- trix.

  No -- stras de -- pre -- ca -- ti -- o --
  nes, de -- pre -- ca -- ti -- "o -"
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    a'4.-\tutti gis8 a a, a'4~
    a8 g f4 e gis
    a8 a, e'4 a, r
    \clef tenor e''~ e16 d c h c8 a a g!16 fis
    \clef bass e2 cis
    d h
  }
}

BassFigures = \figuremode {
  r4 <2>8 <6> r2
  r8 <6> <7> <6> <_+>2
  r4 <4> <_+> r2
  <_!>4 <_+> <6> <_+>8. <6\\>16
  r2 <6 5!>
  <4>4 <3> <6 5>2
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
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
