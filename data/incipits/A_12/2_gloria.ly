\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r2 a'
    b4. b8 a4 a8 a
    d4 d8 d cis4 e~
    e8[ d] d[ c] b4. b8
    a a f' e d4. d8
    cis4
  }
}

SopranoLyrics = \lyricmode {
  Lau --
  da -- mus te, be -- ne --
  di -- ci -- mus te, ad --
  o -- ra -- mus
  te, glo -- ri -- fi -- ca -- mus
  te.
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    f8 a g e f4 r
    g g8 g f4 f8 f
    f4 f e8 a a g
    f4 g8 a g d r4
    f4. g8 g g a g16[ f]
    e4
  }
}

AltoLyrics = \lyricmode {
  Et in ter -- ra pax,
  gra -- ti -- as a -- gi -- mus
  ti -- bi pro -- pter ma -- gnam
  glo -- ri -- am tu -- am,
  Fi -- li u -- ni -- ge -- ni --
  te.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    d8 d d cis d4 r
    d d8 d d d a a
    a d, a' a a4 a8 a
    a4. d8 d4 r
    a4. a8 b b a[ b]
    a4
  }
}

TenoreLyrics = \lyricmode {
  Et in ter -- ra pax,
  Do -- mi -- ne De -- us, Rex coe --
  le -- stis, De -- us Pa -- ter o --
  mni -- po -- tens,
  Je -- su, Je -- su Chri --
  ste.
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    d8 f e a d,4 f8 d
    g8. g,16 g4 d' f8[ e]
    d[ b'] f[ g] a a, r4
    d e8 f g f d e
    f f, r4 d'8[ g] f g
    a a,
  }
}

BassoLyrics = \lyricmode {
  Et in ter -- ra pax, pax ho --
  mi -- ni -- bus bo -- nae
  vo -- lun -- ta -- tis,
  Do -- mi -- ne De -- us, A -- gnus
  De -- i, Fi -- li -- us
  Pa -- tris.
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Allegro"
    d8 f e a d, e f d
    g g, b g d' e f e
    d b' f g a a, cis a
    d4 e8 f g f d e
    f e d c! b g f g
    a4
  }
}

BassFigures = \figuremode {
  r4 <7>8 <_+> r2
  r1
  r2 <_+>
  <9>8 <8> <7> <5>4 <6>8 q <6 5>
  r2 <6>4 q8 <6 5>
  <_+>4
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
